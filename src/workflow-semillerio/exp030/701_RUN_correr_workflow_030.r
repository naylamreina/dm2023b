# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio/exp030/711_CA_reparar_dataset_030.r")
source("~/dm2023b/src/workflow-semillerio/exp030/721_DR_corregir_drifting_030.r")
source("~/dm2023b/src/workflow-semillerio/exp030/731_FE_historia_030.r")
source("~/dm2023b/src/workflow-semillerio/exp030/741_TS_training_strategy_030.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio/exp030/751_HT_lightgbm_030.r")
source("~/dm2023b/src/workflow-semillerio/exp030/795_ZZ_final_semillerio_030.r")
