// Matthew Francis
// The University of Sydney
// SIMON CPA Attack

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

// Defines
//#define SAMPLES 100000
#define WAVELENGTH 512
#define KEYS 4
#define CHUNKS 512

int SAMPLES;

float maximum(double* array, int size) {

	float max = array[0];
	for(int i = 0; i < size; i++) {
		if(array[i] > max) 
			max = array[i];
	}

	return max;

}

unsigned int hamming_distance(unsigned int M, unsigned int R) {

	unsigned int H = M^R;
	int dist = 0;
	while(H) {
		dist++;
		H &= H - 1;
	}

	return dist;

}

unsigned char get_pt_bit(unsigned int pt, unsigned char lr, unsigned char bit) { 

	// Left has lr = 0, Right has lr = 1
	if(lr) {
		return (pt >> (bit-1)) & 0x01;
	}

	return (pt >> (15+bit)) & 0x01;

}

float power_function(unsigned int pt, unsigned char keyguess) {

	unsigned char pf = (get_pt_bit(pt, 0, 14) & get_pt_bit(pt, 0, 7)) ^ (((keyguess&0x01) ^ (get_pt_bit(pt, 0, 14))) & (((keyguess&0x02) >> 1)^(get_pt_bit(pt, 0, 7))));
	//printf("pt = %x, keyguess = %x, pf = %f\n", pt, keyguess, pf);

	//unsigned char k16 = (keyguess & 0x10) >> 4;
	//unsigned char k15 = (keyguess & 0x08) >> 3;
	//unsigned char k9 = (keyguess & 0x04) >> 2;
	//unsigned char k1 = (keyguess & 0x02) >> 1;
	//unsigned char k1_2 = (keyguess & 0x01);

	//unsigned char l2 = k1 ^ get_pt_bit(pt, 1, 1) ^ get_pt_bit(pt, 0, 15) ^ (get_pt_bit(pt, 0, 16) & get_pt_bit(pt, 0, 9));
	//unsigned char l15_2 = k15 ^ get_pt_bit(pt, 1, 15) ^ get_pt_bit(pt, 0, 13) ^ (get_pt_bit(pt, 0, 14) & get_pt_bit(pt, 0, 7));
	//unsigned char l16_2 = k16 ^ get_pt_bit(pt, 1, 16) ^ get_pt_bit(pt, 0, 14) ^ (get_pt_bit(pt, 0, 15) & get_pt_bit(pt, 0, 8));
	//unsigned char l9_2 = k9 ^ get_pt_bit(pt, 1, 9) ^ get_pt_bit(pt, 0, 7) ^ (get_pt_bit(pt, 0, 8) & get_pt_bit(pt, 0, 1));
	//unsigned char l3 = k1_2 ^ get_pt_bit(pt, 0, 1) ^ l15_2 ^ (l16_2 & l9_2);

	// flipped
	//unsigned char l2 = k1 ^ get_pt_bit(pt, 0, 1) ^ get_pt_bit(pt, 1, 15) ^ (get_pt_bit(pt, 1, 16) & get_pt_bit(pt, 1, 9));
	//unsigned char l15_2 = k15 ^ get_pt_bit(pt, 0, 15) ^ get_pt_bit(pt, 1, 13) ^ (get_pt_bit(pt, 1, 14) & get_pt_bit(pt, 1, 7));
	//unsigned char l16_2 = k16 ^ get_pt_bit(pt, 0, 16) ^ get_pt_bit(pt, 1, 14) ^ (get_pt_bit(pt, 1, 15) & get_pt_bit(pt, 1, 8));
	//unsigned char l9_2 = k9 ^ get_pt_bit(pt, 0, 9) ^ get_pt_bit(pt, 1, 7) ^ (get_pt_bit(pt, 1, 8) & get_pt_bit(pt, 1, 1));
	//unsigned char l3 = k1_2 ^ get_pt_bit(pt, 1, 1) ^ l15_2 ^ (l16_2 & l9_2);

	//unsigned char pf = l3 ^ l2;

	// flipped
	//.unsigned char pf = (get_pt_bit(pt, 1, 14) & get_pt_bit(pt, 1, 7)) ^ (((keyguess&0x01) ^ (get_pt_bit(pt, 1, 14))) & (((keyguess&0x02) >> 1)^(get_pt_bit(pt, 1, 7))));

	//printf("k16 = %x, k15 = %x, k9 = %x, k1 = %x, k1_2 = %x\n", k16, k15, k9, k1, k1_2);
	//printf("pt: %x\n", pt);
	//printf("r1 = %x, l15 = %x, l16 = %x, l9 = %x\n", get_pt_bit(pt, 1, 1), get_pt_bit(pt, 0, 15), get_pt_bit(pt, 0, 16), get_pt_bit(pt, 0, 9));
	//printf("l1 = %x, r15 = %x, l13 = %x, l14 = %x\n", get_pt_bit(pt, 0, 1), get_pt_bit(pt, 1, 15), get_pt_bit(pt, 0, 13), get_pt_bit(pt, 0, 14));
	//printf("l7 = %x, r16 = %x, l8 = %x, r9 = %x\n", get_pt_bit(pt, 0, 7), get_pt_bit(pt, 1, 16), get_pt_bit(pt, 0, 8), get_pt_bit(pt, 1, 9));
	//printf("l2 = %x, l15_2 = %x, l16_2 = %x, l9_2 = %x, l3 = %x, pf = %x\n", l2, l15_2, l16_2, l9_2, l3, pf);
	return (float) pf;

}

double max_correlation(float** wave, unsigned int* pt, unsigned char keyguess) { 

	// Create estimated power consumption for each sample
	float estimated_power[SAMPLES];

	// Populate the estimated power consumption array with our power function
	for(int i = 0; i < SAMPLES; i++) {
		estimated_power[i] = power_function(pt[i], keyguess);
	}

	double sigmaWH = 0, sigmaW = 0, sigmaH = 0, sigmaW2 = 0, sigmaH2 = 0;
	double correlations[WAVELENGTH];

	for(int i = 0; i < SAMPLES; i++) {
		sigmaH += (double) estimated_power[i];
		sigmaH2 += (double) estimated_power[i] * (double) estimated_power[i];
	}
	

	for(int i = 0; i < WAVELENGTH; i++) { 
		sigmaW = 0; sigmaW2 = 0; sigmaWH = 0;

		for(int j = 0; j < SAMPLES; j++) {
			sigmaW += (double) wave[j][i];
			sigmaW2 += (double) wave[j][i] * (double) wave[j][i];
			sigmaWH += (double) wave[j][i] * (double) estimated_power[j];
		}
		//printf("sigmaW2 = %f\n", sigmaW2);

		double numerator = SAMPLES * sigmaWH - sigmaW * sigmaH;
		double denominator = sqrt(SAMPLES * sigmaW2 - sigmaW * sigmaW) * sqrt(SAMPLES * sigmaH2 - sigmaH * sigmaH);

		if(numerator == 0 || denominator == 0) { 
			correlations[i] = 0;
		} else { 
			correlations[i] = fabs(numerator / denominator);
		}
		//printf("sigmaH: %.2f, sigmaH2: %.2f, sigmaW: %.2f, sigmaW2: %.2f, sigmaWH: %.2f\n", sigmaH, sigmaH2, sigmaW, sigmaW2, sigmaWH);
		//printf("numerator: %.2f, denominator: %.2f\n", numerator, denominator);
	
	}

	double max_correlation = maximum(correlations, WAVELENGTH);
	return max_correlation;
	

}


int main(int argc, char** argv) {

	// Check arguments. Should be of the form ./cpa wave plaintext samples
	if(argc != 4) {
		fprintf(stderr, "%s\n", "Invalid arguments. Try ./cpan wave plaintext SAMPLES");
		exit(EXIT_FAILURE);
	}

	// Set samples
	SAMPLES = atoi(argv[3]);

	// First extract wavedata, these are in floats so that oscilloscope measurements can be taken
	// Of the format wave[encryption][sample]
	float** wave = (float **) malloc(sizeof(float *) * SAMPLES);

	// Then malloc each entry
	for(int i = 0; i < SAMPLES; i++) { 
		wave[i] = (float *) malloc(sizeof(float) * WAVELENGTH);
	}

	// Populate each entry
	FILE* wavefile = fopen(argv[1], "r");
	for(int i = 0; i < SAMPLES; i++) { 
		for(int j = 0; j < WAVELENGTH; j++) { 

			float sample;
			fread((void *) &sample, sizeof(float), 1, wavefile);
			wave[i][j] = sample;
			
		}
	}
	fclose(wavefile);

	// Get plaintext
	unsigned int* pt = malloc(sizeof(unsigned int) * SAMPLES);

	// Populate each entry
	FILE* ptfile = fopen(argv[2], "r");
	for(int i = 0; i < SAMPLES; i++) { 
		fscanf(ptfile, "%x", &pt[i]);
	}

	fclose(ptfile);
	
	// Check wavefile
	//for(int i = 0; i < WAVELENGTH; i++) 
		//printf("%.2f ", wave[0][i]);

	// Get and print correlations
	double correlations[KEYS];
	for(int guessed_key = 0; guessed_key < KEYS; guessed_key++) {
		correlations[guessed_key] = max_correlation(wave, pt, guessed_key);
		printf("%x:\t%.4f\n", guessed_key, correlations[guessed_key]);
	}

	

	return 0;

}

