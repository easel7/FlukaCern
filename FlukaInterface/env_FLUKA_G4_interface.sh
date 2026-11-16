#! /bin/bash
echo "source /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/env_FLUKA.sh"
if [ ! -e "/Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/env_FLUKA.sh" ]; then
   echo "env_FLUKA.sh does not exist. Please create it: go to /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface, and do make env. Then, source again this script."
else
   source /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/env_FLUKA.sh
   echo ""
   echo "Setting FLUKAInterface_INCLUDE_DIR:"
   export FLUKAInterface_INCLUDE_DIR="/Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/source/cpp_utils /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/source/fluka5/hadronic_interactions/interface_to_G4 /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/source/fluka_G4_bridges /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/source/fluka_G4_physics_list"
   echo "export FLUKAInterface_INCLUDE_DIR=$FLUKAInterface_INCLUDE_DIR"
   echo "FLUKAInterface_INCLUDE_DIR successfully set."
   echo ""
   echo "Setting FLUKAInterface_LIBRARIES:"
   export FLUKAInterface_LIBRARIES="/Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/interface/fluka_interface.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/interface/FLUKAParticleTable.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/interface/flrndm.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/interface/flrnlp.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/interface/flrnoc.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/interface/FLUKAHadronInelasticPhysicsConstructor.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/interface/FLUKAInelasticScatteringXS.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/interface/FLUKANuclearInelasticModel.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/interface/G4_HP_CernFLUKAHadronInelastic_PhysicsList.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/interface/build_G4_process_helpers.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/flabrt.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/oauxf.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/flush.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/string_conversion.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/string_print.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/declare_commons.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/flabrw.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/oauxfw.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/closef.o /Users/xiongzheng/software/geant4/examples/extended/hadronic/FlukaCern/FlukaInterface/obj/flushf.o"
   missing_obj=false;
   for obj in $FLUKAInterface_LIBRARIES; do
      if [ ! -e "$obj" ]; then
         echo "$obj does not exist."
         missing_obj=true
      fi
   done
   if [ "$missing_obj" = true ]; then
      echo "!!! Object file(s) in FLUKAInterface_LIBRARIES is/are missing. Please (re)compile the G4 interface (make or make interface)!";
   else
      export FLUKAInterface_LIBRARIES="$FLUKAInterface_LIBRARIES /Users/xiongzheng/software/fluka4-5.2/lib/libfluka_no_random.a"
      export FLUKAInterface_LIBRARIES="$FLUKAInterface_LIBRARIES -lgfortran"
      echo "export FLUKAInterface_LIBRARIES=$FLUKAInterface_LIBRARIES"
      echo "FLUKAInterface_LIBRARIES successfully set."
   fi
fi
echo ""
