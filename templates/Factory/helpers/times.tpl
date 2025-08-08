{{- define "incloud-web-resources.factory.time.create" -}}
- type: antdText
  data:
    id: 3601
    strong: true
    text: "Created"
- type: antdFlex
  data:
    id: 3602
    gap: 6
    align: center
  children:
    - type: antdText
      data:
        id: 36021
        text: "🌐"
    - type: parsedText
      data:
        id: 36022
        text: "{reqs[0]['metadata', 'creationTimestamp']}"
        formatter: timestamp
{{- end -}}
