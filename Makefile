db-up:
	docker compose --env-file .env -p com-jhintersoftware-mailer up -d --build