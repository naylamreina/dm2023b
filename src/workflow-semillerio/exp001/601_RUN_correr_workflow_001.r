# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio/exp001/711_CA_reparar_dataset_001.r")
source("~/dm2023b/src/workflow-semillerio/exp001/721_DR_corregir_drifting_001.r")
source("~/dm2023b/src/workflow-semillerio/exp001/731_FE_historia_001.r")
source("~/dm2023b/src/workflow-semillerio/exp001/741_TS_training_strategy_001.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio/exp001/751_HT_lightgbm_001.r")
source("~/dm2023b/src/workflow-semillerio/exp001/795_ZZ_final_semillerio_001.r")
