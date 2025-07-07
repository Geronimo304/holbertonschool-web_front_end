#!/usr/bin/env bash
# push.sh  ―  Comitea todo lo pendiente y empuja a GitHub en un paso

# 1) Mensaje de commit
msg="$*"
if [ -z "$msg" ]; then
  # Si no escribís mensaje al invocar el script, pone uno por defecto con la fecha
  msg="Actualización automática $(date '+%Y-%m-%d %H:%M')"
fi

# 2) Añadir todo lo modificado
git add -A

# 3) Crear el commit
git commit -m "$msg"

# 4) Empujar a la rama actual (por defecto a origin)
git push
