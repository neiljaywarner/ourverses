Feature: User can navigate to verse list
    Scenario: App opens and I see an initial verse on home screen
        Given the app is running
        Then I see {Icons.home} icon
        And I see {'Psalms 119:9-11 WEB'} text

    Scenario: Tapping the list icon goes to the verses screen
        Given the app is running
        When I tap {Icons.format_align_left_outlined} icon
        Then I see {'Verses'} text
