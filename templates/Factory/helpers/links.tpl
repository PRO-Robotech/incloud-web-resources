{{- define "incloud-web-resources.factory.links.namespace-details" -}}
- type: antdText
  data:
    id: 21021
    strong: true
    text: "Namespace"
- type: antdLink
  data:
    id: 16
    text: "{reqsJsonPath[0]['.metadata.namespace']['-']}"
    href: "/openapi-ui/{2}/factory/namespace-details/{3}"
{{- end -}}

{{- define "incloud-web-resources.factory.links.node-details" -}}
- type: antdText
  data:
    id: 21021
    strong: true
    text: "Node"
- type: antdLink
  data:
    id: 16
    text: "{reqsJsonPath[0]['.spec.nodeName']['-']}"
    href: "/openapi-ui/{2}/factory/node-details/{reqsJsonPath[0]['.spec.nodeName']['-']}"
{{- end -}}
