object @proposals
attributes :id, :statement

node(:updated_at) { |proposal| proposal.updated_at.to_s(:month_day_year) }
node(:related_proposals_count) { |proposal| proposal.root.related_proposals.count + 1 }
node(:votes_in_tree) { |proposal| proposal.votes_in_tree }

child :hub do
  attributes :id, :short_hub
end
