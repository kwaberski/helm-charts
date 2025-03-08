{{/*
Determine the namespace to use, allowing for a namespace override.
*/}}

{{- define "storage.namespace" -}}
  {{- if .Values.namespaceOverride }}
    {{- .Values.namespaceOverride }}
  {{- else }}
    {{- .Release.Namespace }}
  {{- end }}
{{- end }}

{{/*
Determine NFS Server IP to use, allowing for override.
*/}}

{{- define "storage.nfsServerIP" -}}
  {{- if .Values.nfsServerIP }}
    {{- .Values.nfsServerIP }}
  {{- else }}
    {{- "192.168.2.9" }}
  {{- end }}
{{- end }}

{{/*
Determine NFS mountpath to use, allowing for a mountpath override.
*/}}

{{- define "storage.nfsMountPath" -}}
  {{- if .Values.nfsMountPath }}
    {{- .Values.nfsMountPath }}
  {{- else }}
    {{- "/mnt/NFS-SATA/k8s-storage/sc-basic" }}
  {{- end }}
{{- end }}