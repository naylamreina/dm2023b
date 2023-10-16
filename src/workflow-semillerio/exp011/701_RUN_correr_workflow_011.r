# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio/exp008/711_CA_reparar_dataset_008.r")
source("~/dm2023b/src/workflow-semillerio/exp008/721_DR_corregir_drifting_008.r")
source("~/dm2023b/src/workflow-semillerio/exp008/731_FE_historia_008.r")
source("~/dm2023b/src/workflow-semillerio/exp008/741_TS_training_strategy_008.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio/exp008/751_HT_lightgbm_008.r")
source("~/dm2023b/src/workflow-semillerio/exp008/795_ZZ_final_semillerio_008.r")
