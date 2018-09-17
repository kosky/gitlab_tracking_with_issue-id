require 'redmine'


Redmine::Plugin.register :gitlab_tracking do
  name 'Gitlab Tracking plugin modified when used with ISSUE-ID plugin'
  author 'Ivan Koško'
  description 'Tracking gitlab activity repo'
  version '1.0'
  url 'https://github.com/alfss/gitlab_tracking'
  author_url ''

  settings(:partial => 'settings/gitlab_tracking_settings',
           :default => {
               'issue_regexp' => '((fix|ref)\s*#[A-Z]+-[0-9]+)',
               'issue_regexp_options' => 'i'
           })
end

require_dependency 'gitlab_tracking/hooks'