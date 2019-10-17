curl "http://localhost:4741/leaders/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "leader": {
      "name": "'"${NAME}"'",
      "email": "'"${EMAIL}"'",
      "phone": "'"${PHONE}"'",
      "skills": "'"${SKILLS}"'",
      "completed_projects": "'"${COMPLETED_PROJECTS}"'"
    }
  }'

  echo
