# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-inicial/exp09/611_CA_reparar_dataset_09.r")
source("~/dm2023b/src/workflow-inicial/exp09/621_DR_corregir_drifting_09.r")
source("~/dm2023b/src/workflow-inicial/exp09/631_FE_historia_09.r")
source("~/dm2023b/src/workflow-inicial/exp09/641_TS_training_strategy_09.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-inicial/exp09/651_HT_lightgbm_09.r")
source("~/dm2023b/src/workflow-inicial/exp09/661_ZZ_final_09.r")
