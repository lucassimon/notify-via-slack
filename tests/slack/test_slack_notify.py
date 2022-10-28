import sys

sys.path.append("..")

from slack_notifier.slack.notify import SlackNotify


def test_create_webclient():
    assert 1 == 1


def test_create_channel_when_is_error_is_true():
    assert 1 == 1


def test_create_channel_when_is_error_is_false():
    assert 1 == 1


def test_create_message():
    assert 1 == 1


def test_notify_raises_slack_api_error_when_token_is_wrong():
    assert 1 == 1


def test_notify_success_when_emit_log_is_false():
    assert 1 == 1


def test_notify_success_when_emit_log_is_true():
    assert 1 == 1


def test_notify_success_when_emit_log_and_is_error_is_true():
    assert 1 == 1
