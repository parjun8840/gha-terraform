def create_ticket():
	try:
		jira_connection = JIRA(
		basic_auth=(os.environ['JIRA_EMAIL'], os.environ['JIRA_TOKEN']),
		server=os.environ['JIRA_SERVER_URL']
		)

		issue_dict = {
			'project': {'key': 'pixie'},
			'summary': os.environ['JIRA_SUMMARY'],
			'description': os.environ['JIRA_DESCRIPTION'],
			'issuetype': {'name': 'Task'},
			'Team': ['EKS'],
			'Subteam': ['OnCall']

			}

		new_issue = jira_connection.create_issue(fields=issue_dict)
		print(f'{new_issue.key}')
		return (f'{new_issue.key}')
	except Exception as e:
		printf(f'Error while creating Jira Ticket: {e}')
		return ''
if __name__ == '__main__':
	create_ticket()

