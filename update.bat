@echo off
SET drive=e:
SET location=sl-marine/kripa
cd /
%drive%
cd %location%
git pull origin master -q
echo ##################################################
echo ##################################################
echo ######## Application successfully updated ########
echo ##################################################
echo ##################################################
pause
exit