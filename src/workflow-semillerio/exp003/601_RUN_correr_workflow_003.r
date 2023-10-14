# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio/exp003/711_CA_reparar_dataset_003.r")
source("~/dm2023b/src/workflow-semillerio/exp003/721_DR_corregir_drifting_003.r")
source("~/dm2023b/src/workflow-semillerio/exp003/731_FE_historia_003.r")
source("~/dm2023b/src/workflow-semillerio/exp003/741_TS_training_strategy_003.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio/exp003/751_HT_lightgbm_003.r")
source("~/dm2023b/src/workflow-semillerio/exp003/795_ZZ_final_semillerio_003.r")
