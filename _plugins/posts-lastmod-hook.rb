#!/usr/bin/env ruby
#
# Automatically set post date and last_modified_at from Git commits

Jekyll::Hooks.register :posts, :post_init do |post|

  commit_num = `git rev-list --count HEAD "#{ post.path }"`.to_i

  if commit_num > 0
    # Set date from the first commit (creation time) if not already set
    if post.data['date'].nil?
      created_date = `git log --follow --reverse --pretty="%ad" --date=iso "#{ post.path }" | head -1`.strip
      if created_date.length > 0
        post.data['date'] = created_date
      end
    end

    # Set last_modified_at from the latest commit if there are multiple commits
    if commit_num > 1
      lastmod_date = `git log -1 --pretty="%ad" --date=iso "#{ post.path }"`.strip
      post.data['last_modified_at'] = lastmod_date
    end
  end

end
