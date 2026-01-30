{{- define "nodeapp.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "nodeapp.fullname" -}}
{{ printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{- define "nodeapp.serviceAccountName" -}}
{{ printf "%s-%s-sa" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{- define "nodeapp.labels" -}}
app: {{ include "nodeapp.name" . }}
chart: {{ .Chart.Name }}-{{ .Chart.Version }}
release: {{ .Release.Name }}
heritage: {{ .Release.Service }}
{{- end -}}
