CREATE TABLE IF NOT EXISTS integrations (
    id TEXT PRIMARY KEY,
    type TEXT NOT NULL,
    name TEXT NOT NULL,
    enabled INTEGER NOT NULL DEFAULT 1,
    config_enc TEXT NOT NULL DEFAULT '',
    created_at TEXT NOT NULL,
    updated_at TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS notifications (
    id TEXT PRIMARY KEY,
    level TEXT NOT NULL DEFAULT 'info',
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    channel TEXT NOT NULL DEFAULT 'panel',
    status TEXT NOT NULL DEFAULT 'new',
    meta_json TEXT NOT NULL DEFAULT '{}',
    created_at TEXT NOT NULL,
    read_at TEXT
);
CREATE INDEX IF NOT EXISTS idx_notifications_status ON notifications(status,created_at);
CREATE TABLE IF NOT EXISTS maintenance_windows (
    id TEXT PRIMARY KEY,
    enabled INTEGER NOT NULL DEFAULT 1,
    starts_at TEXT NOT NULL,
    ends_at TEXT,
    message TEXT NOT NULL DEFAULT '',
    created_by TEXT NOT NULL DEFAULT '',
    created_at TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS apk_releases (
    id TEXT PRIMARY KEY,
    version_name TEXT NOT NULL,
    version_code INTEGER NOT NULL DEFAULT 0,
    channel TEXT NOT NULL DEFAULT 'stable',
    file_name TEXT NOT NULL,
    file_path TEXT NOT NULL,
    sha256 TEXT NOT NULL,
    file_size INTEGER NOT NULL DEFAULT 0,
    rollout_percent INTEGER NOT NULL DEFAULT 100,
    status TEXT NOT NULL DEFAULT 'active',
    notes TEXT NOT NULL DEFAULT '',
    created_at TEXT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_apk_channel ON apk_releases(channel,status,created_at);
CREATE TABLE IF NOT EXISTS protocol_contracts (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    transport TEXT NOT NULL,
    request_schema TEXT NOT NULL DEFAULT '',
    response_schema TEXT NOT NULL DEFAULT '',
    evidence TEXT NOT NULL DEFAULT '',
    confidence TEXT NOT NULL DEFAULT 'partial',
    stock_routing TEXT NOT NULL DEFAULT '',
    x1_endpoint TEXT NOT NULL DEFAULT '',
    updated_at TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS android_validation (
    id TEXT PRIMARY KEY,
    apk_version TEXT NOT NULL,
    contract_name TEXT NOT NULL,
    status TEXT NOT NULL CHECK(status IN ('PASS','FAIL','NA','PENDING')),
    tested_at TEXT,
    device_model TEXT NOT NULL DEFAULT '',
    android_version TEXT NOT NULL DEFAULT '',
    notes TEXT NOT NULL DEFAULT '',
    created_at TEXT NOT NULL,
    updated_at TEXT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_android_contract ON android_validation(contract_name,apk_version);
