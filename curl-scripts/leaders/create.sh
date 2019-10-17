curl "http://localhost:4741/leaders" \
  --include \
  --request POST \
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
