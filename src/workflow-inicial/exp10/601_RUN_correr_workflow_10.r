# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-inicial/exp10/611_CA_reparar_dataset_10.r")
source("~/dm2023b/src/workflow-inicial/exp10/621_DR_corregir_drifting_10.r")
source("~/dm2023b/src/workflow-inicial/exp10/631_FE_historia_10.r")
source("~/dm2023b/src/workflow-inicial/exp10/641_TS_training_strategy_10.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-inicial/exp10/651_HT_lightgbm_10.r")
source("~/dm2023b/src/workflow-inicial/exp10/661_ZZ_final_10.r")
