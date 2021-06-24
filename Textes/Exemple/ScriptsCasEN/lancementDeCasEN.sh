#!/usr/bin/env bash

UNITEX_HOME="${HOME}/Unitex-GramLab-3.2"
SCRIPTS_CASEN="$(dirname $0)"

${UNITEX_HOME}/App/UnitexToolLogger { SelectOutput --output=off } { InstallLingResourcePackage -p ${SCRIPTS_CASEN}/CasEN_lingpkg.zip -x $:UnitexPkgResource -v } { RunScript -v -a INPUT_FILE_1=${SCRIPTS_CASEN}/exemple.txt -a CORPUS_WORK_DIR=$:UnitexPkgWork -a PACKAGE_DIR=$:UnitexPkgResource -a OUTPUT_FILE_1=${SCRIPTS_CASEN}/exemple_result.txt $:UnitexPkgResource/script/CasEN.uniscript } { InstallLingResourcePackage -p ${SCRIPTS_CASEN}/CasEN_lingpkg.zip -x $:UnitexPkgResource -u -v }
