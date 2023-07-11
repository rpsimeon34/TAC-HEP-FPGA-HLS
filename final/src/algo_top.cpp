#include "algo_top_parameters.h"
#include "algo_top.h"
#include <algorithm>
#include <utility>

#include "objects.h"

using namespace std;
using namespace algo;


//Each output link carries 576b of information
//17 towers can be fit in one link (32*17=544)
void processOutputData(hls::stream<axiword576> &link, ap_uint<576> bigdataword) {
#pragma HLS INTERFACE axis port=link
#pragma HLS PIPELINE II=9
#pragma HLS INLINE
  axiword576 r;
  r.user = 0;
  r.last = 1;
  r.data = bigdataword;
  link.write(r);
}

void processInputData(hls::stream<axiword576> &link, CrystalGroup &crystalGroup) {
#pragma HLS INTERFACE axis port=link
#pragma HLS PIPELINE II=9
#pragma HLS INLINE

#ifndef __SYNTHESIS__
  // Avoid simulation warnings
  if (link.empty()) return;
#endif
  ap_uint<576> bigdataword = link.read().data;
  crystalGroup = CrystalGroup(bigdataword);
  return;
}


void algo_top(hls::stream<axiword576> link_in[N_INPUT_LINKS], hls::stream<axiword576> link_out[N_OUTPUT_LINKS]) {
#pragma HLS INTERFACE axis port=link_in
#pragma HLS INTERFACE axis port=link_out
#pragma HLS PIPELINE II=9


  // Each crystal group contain 1 tower per array index which containt 25 crystals. 
  // Information for all 25 crystals can be accessed ass shown below in comments
  // ETA and PHI value can be extracted from the array indices and no special information is passed to save bandwidth
  // Each LINK (fibre) carry information (energy-10b) for one tower(25 crystals)

  
  CrystalGroup towersInPhi0[TOWERS_IN_ETA]; // Phi=0; Eta goes from 0 to 16
  CrystalGroup towersInPhi1[TOWERS_IN_ETA]; // Phi=1; Eta goes from 0 to 16
  CrystalGroup towersInPhi2[TOWERS_IN_ETA]; // Phi=2; Eta goes from 0 to 16
  CrystalGroup towersInPhi3[TOWERS_IN_ETA]; // Phi=3; Eta goes from 0 to 16
  CrystalGroup towersInPhi4[TOWERS_IN_ETA]; // Phi=4; Eta goes from 0 to 16
  CrystalGroup towersInPhi5[TOWERS_IN_ETA]; // Phi=5; Eta goes from 0 to 16

#pragma HLS ARRAY_PARTITION variable=towersInPhi0
#pragma HLS ARRAY_PARTITION variable=towersInPhi1
#pragma HLS ARRAY_PARTITION variable=towersInPhi2
#pragma HLS ARRAY_PARTITION variable=towersInPhi3
#pragma HLS ARRAY_PARTITION variable=towersInPhi4
#pragma HLS ARRAY_PARTITION variable=towersInPhi5

 makeCrystalsLoop: for (size_t iEta = 0; iEta < TOWERS_IN_ETA; iEta++) {
#pragma HLS UNROLL
    processInputData(link_in[iEta], towersInPhi0[iEta]);
    processInputData(link_in[iEta+17], towersInPhi1[iEta]);
    processInputData(link_in[iEta+34], towersInPhi2[iEta]);
    processInputData(link_in[iEta+51], towersInPhi3[iEta]);
    processInputData(link_in[iEta+68], towersInPhi4[iEta]);
    processInputData(link_in[iEta+85], towersInPhi5[iEta]);
  }

 //towersInPhi1[0].crystal[0] // crystal goes from 0-24
 //towersInPhi1[0].crystal[1]

    // Make ECAL clusters
    clusterLoop: for (size_t iEta=0; iEta < TOWERS_IN_ETA; iEta++) {
        //cluster(towersInPhi0[iEta],clustersInPhi0_E[iEta],clustersInPhi0_loc[iEta],unclustered0[iEta]);
        //cluster(towersInPhi1[iEta],clustersInPhi1_E[iEta],clustersInPhi1_loc[iEta],unclustered1[iEta]);
        //cluster(towersInPhi2[iEta],clustersInPhi2_E[iEta],clustersInPhi2_loc[iEta],unclustered2[iEta]);
        //cluster(towersInPhi3[iEta],clustersInPhi3_E[iEta],clustersInPhi3_loc[iEta],unclustered3[iEta]);
        //cluster(towersInPhi4[iEta],clustersInPhi4_E[iEta],clustersInPhi4_loc[iEta],unclustered4[iEta]);
        //cluster(towersInPhi5[iEta],clustersInPhi5_E[iEta],clustersInPhi5_loc[iEta],unclustered5[iEta]);
    }

    // Stitch neighboring clusters by calling helper function on all possible neighboring towers
    
    // Sort to find the top 12 tower energies
    //make array of first 32 cluster energies
    //make array of cluster energies 33-64
    //make array of cluster energies 65-96
    //bitonicSorter(1to32,1to32Sorted)
    //bitonicSorter(33to64,33to64Sorted)
    //bitonicSorter(65to96,65to96Sorted)
    //1to64 = last 12 of 1to32Sorted and last 12 of 33to64Sorted and 8 zeros
    //65to102 = last 12 of 65to96Sorted and cluster energies 97-102 and 14 zeros
    //bitonicSorter(1to64,1to64Sorted)
    //bitonicSorter(65to102,65to102Sorted)
    //1to102 = last 12 of 1to64Sorted and last 12 of 65to102Sorted and 8 zeros
    //bitonicSorter(1to102,1to102Sorted)
    //top12_E = last 12 of 1to102Sorted

    // Find the top 12 towers to write output for
    outputLoop: for(size_t itower=0; itower < 12; itower++) {
        bool flag = true;
        phi0Loop: for(size_t iEta=0; iEta < TOWERS_IN_ETA; iEta++) {
            //if (top12_E[itower] > 0.99*clustersInPhi0_E[iEta] && top12_E[itower] < 1.01*clustersInPhi0_E[iEta]) {
            //    write clustersInPhi0[iEta]'s info to output
            //    flag = false;
            //}
        }
        if (flag) {
            phi1Loop: for(size_t iEta=0; iEta < TOWERS_IN_ETA; iEta++) {
                //if (top12_E[itower] > 0.99*clustersInPhi1_E[iEta] && top12_E[itower] < 1.01*clustersInPhi1_E[iEta]) {
                //    write clustersInPhi1[iEta]'s info to output
                //    flag = false;
                //}
            }
        }
        //if (flag) for clustersInPhi2 up through clustersInPhi5 like this
    }

  size_t start = 0;
  ap_uint<576> outWord_576b;
  // Writing dummy value to output
  linkOutputLoop: for(size_t itower = 0; itower < TOWERS_IN_ETA+1; itower++) { 
#pragma HLS UNROLL
  size_t end = start + 31;
  outWord_576b.range(end, start) = 0xDEADBEEF;
  start += 32;
  }
  processOutputData(link_out[0], outWord_576b);
  processOutputData(link_out[1], outWord_576b);

}
