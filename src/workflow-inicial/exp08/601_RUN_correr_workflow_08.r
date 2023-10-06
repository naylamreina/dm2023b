# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-inicial/exp08/611_CA_reparar_dataset_08.r")
source("~/dm2023b/src/workflow-inicial/exp08/621_DR_corregir_drifting_08.r")
source("~/dm2023b/src/workflow-inicial/exp08/631_FE_historia_08.r")
source("~/dm2023b/src/workflow-inicial/exp08/641_TS_training_strategy_08.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-inicial/exp08/651_HT_lightgbm_08.r")
source("~/dm2023b/src/workflow-inicial/exp08/661_ZZ_final_08.r")
