{{- define "nodeapp.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "nodeapp.fullname" -}}
{{ printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end -}}
