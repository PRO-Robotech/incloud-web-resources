{{- define "incloud-web-resources.factory.counters.taints" -}}
- type: antdText
  data:
    id: 3601
    strong: true
    text: "Taints"
- type: ItemCounter
  data:
    id: taints-counter
    text: "~counter~ Taints"
    reqIndex: 0
    jsonPathToArray: '.spec.taints'
{{- end -}}

{{- define "incloud-web-resources.factory.counters.template.tolerations" -}}
- type: antdText
  data:
    id: 3601
    strong: true
    text: "tolerations"
- type: ItemCounter
  data:
    id: taints-counter
    text: "~counter~ tolerations"
    reqIndex: 0
    jsonPathToArray: '.spec.template.spec.tolerations'
{{- end -}}

{{- define "incloud-web-resources.factory.counters.pod.tolerations" -}}
- type: antdText
  data:
    id: 3601
    strong: true
    text: "tolerations"
- type: ItemCounter
  data:
    id: taints-counter
    text: "~counter~ tolerations"
    reqIndex: 0
    jsonPathToArray: '.spec.tolerations'
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
