{{- define "incloud-web-resources.factory.labels" -}}
- type: antdText
  data:
    id: 18
    text: "Labels"
    strong: true
    style:
      fontSize: 14
- type: Labels
  data:
    id: labels
    reqIndex: 0
    jsonPathToLabels: ".metadata.labels"
    selectProps:
      maxTagTextLength: 35
{{- end -}}

{{- define "incloud-web-resources.factory.labels.base.selector" -}}
{{- $i := (default 0 .reqIndex) -}}
{{- $type := (default "pod-selector" .type) -}}
{{- $title := (default "Pod selector" .title) -}}
{{- $jsonPath := (default ".spec.template.metadata.labels" .jsonPath) -}}
- type: antdText
  data:
    id: {{ printf "%s-selector" $type }}
    text: "{{ $title }}"
    strong: true
    style:
      fontSize: 14
- type: LabelsToSearchParams
  data:
    id: {{ printf "%s-to-search-params" $type }}
    reqIndex: {{$i}}
    jsonPathToLabels: "{{ $jsonPath }}"
    linkPrefix: "{{ .linkPrefix | default "/openapi-ui/{2}/search" }}"
{{- end -}}
