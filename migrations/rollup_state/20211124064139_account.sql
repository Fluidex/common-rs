-- Add migration script here

CREATE TABLE account (
    id INT CHECK (id >= 1) NOT NULL PRIMARY KEY,
    l1_address VARCHAR(42) NOT NULL DEFAULT '',
    l2_pubkey VARCHAR(66) NOT NULL DEFAULT ''
);

CREATE INDEX account_l1_address ON account (l1_address);
CREATE INDEX account_l2_pubkey ON account (l2_pubkey);
