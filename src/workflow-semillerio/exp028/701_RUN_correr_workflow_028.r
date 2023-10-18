# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio/exp028/711_CA_reparar_dataset_028.r")
source("~/dm2023b/src/workflow-semillerio/exp028/721_DR_corregir_drifting_028.r")
source("~/dm2023b/src/workflow-semillerio/exp028/731_FE_historia_028.r")
source("~/dm2023b/src/workflow-semillerio/exp028/741_TS_training_strategy_028.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio/exp028/751_HT_lightgbm_028.r")
source("~/dm2023b/src/workflow-semillerio/exp028/795_ZZ_final_semillerio_028.r")
