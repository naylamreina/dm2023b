# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio/exp031/711_CA_reparar_dataset_031.r")
source("~/dm2023b/src/workflow-semillerio/exp031/721_DR_corregir_drifting_031.r")
source("~/dm2023b/src/workflow-semillerio/exp031/731_FE_historia_031.r")
source("~/dm2023b/src/workflow-semillerio/exp031/741_TS_training_strategy_031.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio/exp031/751_HT_lightgbm_031.r")
source("~/dm2023b/src/workflow-semillerio/exp031/795_ZZ_final_semillerio_031.r")
