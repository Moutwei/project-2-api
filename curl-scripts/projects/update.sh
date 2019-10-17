curl "http://localhost:4741/projects/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "project": {
      "title": "'"${TITLE}"'",
      "mission": "'"${MISSION}"'",
      "target": "'"${TARGET}"'",
      "requirements": "'"${REQUIREMENTS}"'",
      "status": "'"${STATUS}"'"
    }
  }'

  echo
