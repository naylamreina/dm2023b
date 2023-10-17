# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio/exp025/711_CA_reparar_dataset_025.r")
source("~/dm2023b/src/workflow-semillerio/exp025/721_DR_corregir_drifting_025.r")
source("~/dm2023b/src/workflow-semillerio/exp025/731_FE_historia_025.r")
source("~/dm2023b/src/workflow-semillerio/exp025/741_TS_training_strategy_025.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio/exp025/751_HT_lightgbm_025.r")
source("~/dm2023b/src/workflow-semillerio/exp025/795_ZZ_final_semillerio_025.r")
