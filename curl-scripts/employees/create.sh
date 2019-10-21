curl "http://localhost:4741/employees" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "employee": {
      "name": "'"${NAME}"'",
      "task": "'"${TASK}"'",
      "task_status": "'"${TASK_STATUS}"'",
      "user_id": "'"${USER_ID}"'"
    }
  }'

echo
