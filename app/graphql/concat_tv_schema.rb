# frozen_string_literal: true

class ConcatTvSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
  subscription(Types::SubscriptionType)

  use GraphQL::Execution::Interpreter
  use GraphQL::Analysis::AST

  use GraphQL::Pagination::Connections

  use GraphQL::Subscriptions::ActionCableSubscriptions
end
