%% PFP - Perfect Power Function

% We will model the hamming distance between the plaintext and the second
% round plaintext as the power function. We will then create 4 random
% traces using the real power function and see if as we get more samples
% the real function diverges from the random power function.

%% Get traces

% We will get 5000 traces and consider the last half to save memory
traces = 10000;
wave_file = fopen("waveOsci2023-7-18_12-2-50.data"); 
wave_raw = fread(wave_file, traces*200000, 'float');
wave = reshape(wave_raw, [], size(wave_raw,1)/200000)';
wave = wave(:, 100000:200000);

%% Get plaintext

data_in_file = fopen("data-in2023-7-18_12-2-50.txt");
draw = textscan(data_in_file, "%2x %2x %2x %2x");
plain_text = cell2mat(draw);
plain_text = uint16(plain_text(1:traces,:));

%% Convert plaintext

% In order to calculate the power function of each round we must get the
% plaintext into a usable format

% pt = 81BA DA40
% pt = 33210 55872
% 256*129 + 186 = 33210
% 256*218 + 64 = 55872 perfect

plain_text_converted = zeros(traces, 2);
plain_text_converted(:, 1) = 256*plain_text(:, 1) + plain_text(:, 2);
plain_text_converted(:, 2) = 256*plain_text(:, 3) + plain_text(:, 4);

ptc = plain_text_converted;

%% Get perfect power function

% Our perfect power function is the hamming distance between second round
% and third round. 

% Our key is 191811100901ffff and k1 = ffff

k1 = 0xffff;
pf = zeros(traces,5);

for s = 1:traces
    
    l1 = ptc(s, 1);
    r1 = ptc(s, 2);
    [l2, r2] = s_round(l1, r1, k1);
    
    wl = nnz(dec2bin(bitxor(l1,l2))=='1');
    wr = nnz(dec2bin(bitxor(r1, r2))=='1');
    
    pf(s, 1) = wl+wr;

end

%%

% We then need to populate the other 4 with a random draw from binomial
% distribution

pf(:, 2:5) = binornd(32, 0.5, [traces, 4]);
%% Graph to see

figure
hist(pf);

%% Now run our CPA

max_corr = zeros(1, 5);

% khyp here is the random guess. The FIRST one is the real trace
for khyp = 1:5
    for s = 1:100001

        c = corrcoef(pf(:, khyp), wave(:, s));
        c = abs(c(1, 2));
        if c > max_corr(khyp)
            max_corr(1, khyp) = c;
        end


    end
end




