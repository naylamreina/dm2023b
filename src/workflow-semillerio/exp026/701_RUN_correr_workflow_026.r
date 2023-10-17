# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio/exp026/711_CA_reparar_dataset_026.r")
source("~/dm2023b/src/workflow-semillerio/exp026/721_DR_corregir_drifting_026.r")
source("~/dm2023b/src/workflow-semillerio/exp026/731_FE_historia_026.r")
source("~/dm2023b/src/workflow-semillerio/exp026/741_TS_training_strategy_026.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio/exp026/751_HT_lightgbm_026.r")
source("~/dm2023b/src/workflow-semillerio/exp026/795_ZZ_final_semillerio_026.r")
