{{- define "incloud-web-resources.factory.taints.block" -}}
{{- $i := (default 0 .reqIndex) -}}
{{- $jsonPath := (default "" .jsonPath) -}}
{{- $endpoint := (default "" .endpoint) -}}
{{- $pathToValue := (default "" .pathToValue) -}}
- type: antdText
  data:
    id: taints
    strong: true
    text: Taints
- type: Taints
  data:
    id: taints
    reqIndex: {{ $i }}
    jsonPathToArray: "{{ $jsonPath }}"
    text: "~counter~ Taints"
    errorText: "0 Taints"
    notificationSuccessMessage: "Updated successfully"
    notificationSuccessMessageDescription: "Taints have been updated"
    modalTitle: "Edit taints"
    modalDescriptionText: ""
    inputLabel: ""
    endpoint: "{{ $endpoint }}"
    pathToValue: "{{ $pathToValue }}"
    editModalWidth: "800px"
    cols:
      - 8
      - 8
      - 6
{{- end -}}
