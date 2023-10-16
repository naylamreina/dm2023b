# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio/exp010/711_CA_reparar_dataset_010.r")
source("~/dm2023b/src/workflow-semillerio/exp010/721_DR_corregir_drifting_010.r")
source("~/dm2023b/src/workflow-semillerio/exp010/731_FE_historia_010.r")
source("~/dm2023b/src/workflow-semillerio/exp010/741_TS_training_strategy_010.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio/exp010/751_HT_lightgbm_010.r")
source("~/dm2023b/src/workflow-semillerio/exp010/795_ZZ_final_semillerio_010.r")
