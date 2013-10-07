@echo off
SET drive=e:
SET location=sl-marine/kripa
cd /
%drive%
cd %location%
rails s -p 80