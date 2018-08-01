module GitHub
  module_function

  ORG_READ_ACCESS_SCOPES = ["read:org"].freeze

  def members(org, team: nil)
    if team
      url = "#{API_URL}/orgs/#{org}/teams"
      teams = open_api(url, scopes: ORG_READ_ACCESS_SCOPES)

      team = teams.detect { |t| t["name"] == team }

      return [] unless team
      open_api("#{team["url"]}/members", scopes: ORG_READ_ACCESS_SCOPES)
    else
      url = "#{API_URL}/orgs/#{org}/members"
      open_api(url, scopes: CREATE_ISSUE_FORK_OR_PR_SCOPES)
    end
  end

  def pull_request(owner, repo, number)
    url = "#{API_URL}/repos/#{owner}/#{repo}/pulls/#{number}"
    open_api(url)
  end
end
