# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio/exp032/711_CA_reparar_dataset_032.r")
source("~/dm2023b/src/workflow-semillerio/exp032/721_DR_corregir_drifting_032.r")
source("~/dm2023b/src/workflow-semillerio/exp032/731_FE_historia_032.r")
source("~/dm2023b/src/workflow-semillerio/exp032/741_TS_training_strategy_032.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio/exp032/751_HT_lightgbm_032.r")
source("~/dm2023b/src/workflow-semillerio/exp032/795_ZZ_final_semillerio_032.r")
