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

{{- define "incloud-web-resources.factory.labels.base.pod.selector" -}}
- type: antdText
  data:
    id: 18
    text: "Pod selector"
    strong: true
    style:
      fontSize: 14
- type: LabelsToSearchParams
  data:
    id: labels-to-search-params
    reqIndex: 0
    jsonPathToLabels: ".spec.template.metadata.labels"
    linkPrefix: "/openapi-ui/incloud-k8s-local-dev-local-1/search"
{{- end -}}

{{- define "incloud-web-resources.factory.labels.cronjob.pod.selector" -}}
- type: antdText
  data:
    id: 18
    text: "Pod selector"
    strong: true
    style:
      fontSize: 14
- type: LabelsToSearchParams
  data:
    id: labels-to-search-params
    reqIndex: 0
    jsonPathToLabels: ".spec.jobTemplate.spec.template.metadata.labels"
    linkPrefix: "/openapi-ui/{2}/search"
{{- end -}}


{{- define "incloud-web-resources.factory.labels.base.node.selector" -}}
- type: antdText
  data:
    id: 18
    text: "Node selector"
    strong: true
    style:
      fontSize: 14
- type: LabelsToSearchParams
  data:
    id: labels-to-search-params
    reqIndex: 0
    jsonPathToLabels: ".spec.template.spec.nodeSelector"
    linkPrefix: "/openapi-ui/{2}/search"
{{- end -}}

{{- define "incloud-web-resources.factory.labels.base-pod.node.selector" -}}
- type: antdText
  data:
    id: 18
    text: "Node selector"
    strong: true
    style:
      fontSize: 14
- type: LabelsToSearchParams
  data:
    id: labels-to-search-params
    reqIndex: 0
    jsonPathToLabels: ".spec.nodeSelector"
    linkPrefix: "/openapi-ui/{2}/search"
{{- end -}}

{{- define "incloud-web-resources.factory.labels.cronjob.node.selector" -}}
- type: antdText
  data:
    id: 18
    text: "Node selector"
    strong: true
    style:
      fontSize: 14
- type: LabelsToSearchParams
  data:
    id: labels-to-search-params
    reqIndex: 0
    jsonPathToLabels: ".spec.jobTemplate.spec.template.metadata.labels"
    linkPrefix: "/openapi-ui/{2}/search"
{{- end -}}
