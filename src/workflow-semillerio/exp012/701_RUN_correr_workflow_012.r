# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio/exp012/711_CA_reparar_dataset_012.r")
source("~/dm2023b/src/workflow-semillerio/exp012/721_DR_corregir_drifting_012.r")
source("~/dm2023b/src/workflow-semillerio/exp012/731_FE_historia_012.r")
source("~/dm2023b/src/workflow-semillerio/exp012/741_TS_training_strategy_012.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio/exp012/751_HT_lightgbm_012.r")
source("~/dm2023b/src/workflow-semillerio/exp012/795_ZZ_final_semillerio_012.r")
