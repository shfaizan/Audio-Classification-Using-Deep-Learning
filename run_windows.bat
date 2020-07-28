@echo off

call scripts/settings_windows.bat

call conda activate %CONDA_ENV_NAME%



set PYTHONPATH=%PYTHONPATH%;%CD%;%CD%/fomm
call python afy/cam_fomm.py --config %CONFIG% --relative --adapt_scale --no-pad --checkpoint vox-adv-cpk.pth.tar %*
