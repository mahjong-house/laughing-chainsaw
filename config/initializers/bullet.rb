if Rails.env.development?
  Rails.application.config.after_initialize do
    Bullet.enable = true
    Bullet.raise = true
  end
end
