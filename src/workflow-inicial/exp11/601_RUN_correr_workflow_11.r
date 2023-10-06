# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-inicial/exp11/611_CA_reparar_dataset_11.r")
source("~/dm2023b/src/workflow-inicial/exp11/621_DR_corregir_drifting_11.r")
source("~/dm2023b/src/workflow-inicial/exp11/631_FE_historia_11.r")
source("~/dm2023b/src/workflow-inicial/exp11/641_TS_training_strategy_11.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-inicial/exp11/651_HT_lightgbm_11.r")
source("~/dm2023b/src/workflow-inicial/exp11/661_ZZ_final_11.r")
