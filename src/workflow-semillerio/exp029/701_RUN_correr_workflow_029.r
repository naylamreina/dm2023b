# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio/exp029/711_CA_reparar_dataset_029.r")
source("~/dm2023b/src/workflow-semillerio/exp029/721_DR_corregir_drifting_029.r")
source("~/dm2023b/src/workflow-semillerio/exp029/731_FE_historia_029.r")
source("~/dm2023b/src/workflow-semillerio/exp029/741_TS_training_strategy_029.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio/exp029/751_HT_lightgbm_029.r")
source("~/dm2023b/src/workflow-semillerio/exp029/795_ZZ_final_semillerio_029.r")
