# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio/exp009/711_CA_reparar_dataset_009.r")
source("~/dm2023b/src/workflow-semillerio/exp009/721_DR_corregir_drifting_009.r")
source("~/dm2023b/src/workflow-semillerio/exp009/731_FE_historia_009.r")
source("~/dm2023b/src/workflow-semillerio/exp009/741_TS_training_strategy_009.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio/exp009/751_HT_lightgbm_009.r")
source("~/dm2023b/src/workflow-semillerio/exp009/795_ZZ_final_semillerio_009.r")
