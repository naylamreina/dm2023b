# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio/exp002/711_CA_reparar_dataset_002.r")
source("~/dm2023b/src/workflow-semillerio/exp002/721_DR_corregir_drifting_002.r")
source("~/dm2023b/src/workflow-semillerio/exp002/731_FE_historia_002.r")
source("~/dm2023b/src/workflow-semillerio/exp002/741_TS_training_strategy_002.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio/exp002/751_HT_lightgbm_002.r")
source("~/dm2023b/src/workflow-semillerio/exp002/795_ZZ_final_semillerio_002.r")
