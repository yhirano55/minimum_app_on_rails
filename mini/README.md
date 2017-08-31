# Mini Rails application

Mini api server on Rails.

## Setup

    $ bin/setup

## Running

    $ bin/rails server

Using a browser, go to `http://localhost:3000` and you'll see: "Yay! You’re on Rails!"

## RESTful API Test

#### Index

    $ curl http://localhost:3000/users

#### Show

    $ curl http://localhost:3000/users/1

#### Create

    $ curl -X POST -d "user[name]=alice&user[gender]=female" http://localhost:3000/users

#### Update

    $ curl -X PUT -d "user[name]=carol" http://localhost:3000/users/1

#### Destroy

    $ curl -X DELETE http://localhost:3000/users/1

## Middleware

    $ bin/rails middleware

    use Rack::Sendfile
    use ActionDispatch::Static
    use ActionDispatch::Executor
    use ActiveSupport::Cache::Strategy::LocalCache::Middleware
    use Rack::Runtime
    use ActionDispatch::RequestId
    use ActionDispatch::RemoteIp
    use Rails::Rack::Logger
    use ActionDispatch::ShowExceptions
    use ActionDispatch::DebugExceptions
    use ActionDispatch::Reloader
    use ActionDispatch::Callbacks
    use Rack::Head
    use Rack::ConditionalGet
    use Rack::ETag
    run Mini::Application.routes

## Initializers

    $ bin/rails initializers

    ActionView::Railtie.set_load_path
    ActionCable::Engine.set_load_path
    Mini::Application.set_load_path
    ActionView::Railtie.set_autoload_paths
    ActionCable::Engine.set_autoload_paths
    Mini::Application.set_autoload_paths
    ActionView::Railtie.add_routing_paths
    ActionCable::Engine.add_routing_paths
    Mini::Application.add_routing_paths
    ActionView::Railtie.add_locales
    ActionCable::Engine.add_locales
    Mini::Application.add_locales
    ActionView::Railtie.add_view_paths
    ActionCable::Engine.add_view_paths
    Mini::Application.add_view_paths
    ActionView::Railtie.load_environment_config
    ActionCable::Engine.load_environment_config
    Mini::Application.load_environment_config
    Mini::Application.load_environment_hook
    Mini::Application.load_active_support
    Mini::Application.set_eager_load
    Mini::Application.initialize_logger
    Mini::Application.initialize_cache
    Mini::Application.initialize_dependency_mechanism
    Mini::Application.bootstrap_hook
    Mini::Application.set_secrets_root
    ActiveSupport::Railtie.active_support.deprecation_behavior
    ActiveSupport::Railtie.active_support.initialize_time_zone
    ActiveSupport::Railtie.active_support.initialize_beginning_of_week
    ActiveSupport::Railtie.active_support.set_configs
    ActionDispatch::Railtie.action_dispatch.configure
    ActiveModel::Railtie.active_model.secure_password
    ActionController::Railtie.action_controller.assets_config
    ActionController::Railtie.action_controller.set_helpers_path
    ActionController::Railtie.action_controller.parameters_config
    ActionController::Railtie.action_controller.set_configs
    ActionController::Railtie.action_controller.compile_config_methods
    ActiveRecord::Railtie.active_record.initialize_timezone
    ActiveRecord::Railtie.active_record.logger
    ActiveRecord::Railtie.active_record.migration_error
    ActiveRecord::Railtie.active_record.check_schema_cache_dump
    ActiveRecord::Railtie.active_record.warn_on_records_fetched_greater_than
    ActiveRecord::Railtie.active_record.set_configs
    ActiveRecord::Railtie.active_record.initialize_database
    ActiveRecord::Railtie.active_record.log_runtime
    ActiveRecord::Railtie.active_record.set_reloader_hooks
    ActiveRecord::Railtie.active_record.set_executor_hooks
    ActiveRecord::Railtie.active_record.add_watchable_files
    GlobalID::Railtie.global_id
    ActiveJob::Railtie.active_job.logger
    ActiveJob::Railtie.active_job.set_configs
    ActiveJob::Railtie.active_job.set_reloader_hook
    ActionMailer::Railtie.action_mailer.logger
    ActionMailer::Railtie.action_mailer.set_configs
    ActionMailer::Railtie.action_mailer.compile_config_methods
    Rails::TestUnitRailtie.test_unit.line_filtering
    Sprockets::Railtie.set_default_precompile
    Sprockets::Railtie.quiet_assets
    ActionView::Railtie.prepend_helpers_path
    ActionCable::Engine.prepend_helpers_path
    Mini::Application.prepend_helpers_path
    ActionView::Railtie.load_config_initializers
    ActionCable::Engine.load_config_initializers
    Mini::Application.load_config_initializers
    ActionView::Railtie.engines_blank_point
    ActionCable::Engine.engines_blank_point
    Mini::Application.engines_blank_point
    ActionView::Railtie.append_assets_path
    ActionView::Railtie.action_view.embed_authenticity_token_in_remote_forms
    ActionView::Railtie.action_view.form_with_generates_remote_forms
    ActionView::Railtie.action_view.logger
    ActionView::Railtie.action_view.set_configs
    ActionView::Railtie.action_view.caching
    ActionView::Railtie.action_view.per_request_digest_cache
    ActionView::Railtie.action_view.setup_action_pack
    ActionView::Railtie.action_view.collection_caching
    ActionCable::Engine.append_assets_path
    ActionCable::Engine.action_cable.helpers
    ActionCable::Engine.action_cable.logger
    ActionCable::Engine.action_cable.set_configs
    ActionCable::Engine.action_cable.routes
    ActionCable::Engine.action_cable.set_work_hooks
    Mini::Application.append_assets_path
    Mini::Application.add_generator_templates
    Mini::Application.ensure_autoload_once_paths_as_subset
    Mini::Application.add_builtin_route
    Mini::Application.setup_default_session_store
    Mini::Application.build_middleware_stack
    Mini::Application.define_main_app_helper
    Mini::Application.add_to_prepare_blocks
    Mini::Application.run_prepare_callbacks
    Mini::Application.eager_load!
    Mini::Application.finisher_hook
    Mini::Application.configure_executor_for_concurrency
    Mini::Application.set_routes_reloader_hook
    Mini::Application.set_clear_dependencies_hook
    Mini::Application.disable_dependency_loading
