/**
 * algo_top_parameters.h
 *
 * Defines the algorithm related configuration parameters.
 */

#ifndef __ALGO_TOP_PARAMETERS_H__
#define __ALGO_TOP_PARAMETERS_H__

/** Common algorithm definitions, do not remove **/
// Un-comment to have algo as a passthrough for testing purposes
//#define ALGO_PASSTHROUGH

// Number of data words per processing cycle/frame
const int N_WORDS_PER_FRAME = 9;

/** Algorithm specific parameters **/
#define TOWERS_IN_ETA 17
#define TOWERS_IN_PHI 6

#define N_INPUT_LINKS 102
#define N_OUTPUT_LINKS 2

// 25G inputs
#define N_INPUT_WORDS_PER_FRAME 9
#define N_OUTPUT_WORDS_PER_FRAME 9


#endif
 /* !__ALGO_TOP_PARAMETERS_H__ */
