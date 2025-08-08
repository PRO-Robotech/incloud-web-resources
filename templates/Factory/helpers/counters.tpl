{{- define "incloud-web-resources.factory.counters.fields" -}}
{{- $i := (default 0 .reqIndex) -}}
{{- $type := (default "counter" .type) -}}
{{- $title := (default "" .title) -}}
- type: antdText
  data:
    id: {{ printf "%s-label" $type }}
    strong: true
    text: "{{ $title }}"
- type: ItemCounter
  data:
    id: {{ printf "%s-counter" $type }}
    text: "~counter~ {{ $type }}"
    reqIndex: {{$i}}
    jsonPathToArray: "{{ .jsonPath | default "" }}"
{{- end -}}

{{- define "incloud-web-resources.factory.counters.annotations" -}}
- type: antdText
  data:
    id: annotation-counter
    strong: true
    text: "Annotations"
- type: ItemCounter
  data:
    id: annotations-counter
    text: "~counter~ Annotations"
    reqIndex: 0
    jsonPathToArray: '.metadata.annotations'
{{- end -}}
