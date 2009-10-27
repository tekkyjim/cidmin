raw_config = File.read(RAILS_ROOT + "/config/paperclip_config.yml")
PAPERCLIP_CONFIG = YAML.load(raw_config)[RAILS_ENV].symbolize_keys
