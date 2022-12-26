// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to\nTreasure Box`
  String get on_boarding_welcome_to_treasure_box {
    return Intl.message(
      'Welcome to\nTreasure Box',
      name: 'on_boarding_welcome_to_treasure_box',
      desc: '',
      args: [],
    );
  }

  /// `Log In with BankID`
  String get on_boarding_log_in_with_bank_id {
    return Intl.message(
      'Log In with BankID',
      name: 'on_boarding_log_in_with_bank_id',
      desc: '',
      args: [],
    );
  }

  /// `"Treasure Box App" Wants to use "BankID.com" to Sign in`
  String get on_boarding_log_in_with_bank_id_title {
    return Intl.message(
      '"Treasure Box App" Wants to use "BankID.com" to Sign in',
      name: 'on_boarding_log_in_with_bank_id_title',
      desc: '',
      args: [],
    );
  }

  /// `This allows the app and website to share information about you.`
  String get on_boarding_log_in_with_bank_id_notice {
    return Intl.message(
      'This allows the app and website to share information about you.',
      name: 'on_boarding_log_in_with_bank_id_notice',
      desc: '',
      args: [],
    );
  }

  /// `Log In with Email`
  String get on_boarding_log_in_with_email {
    return Intl.message(
      'Log In with Email',
      name: 'on_boarding_log_in_with_email',
      desc: '',
      args: [],
    );
  }

  /// `Choose the insurance company`
  String get on_boarding_tenant_selection {
    return Intl.message(
      'Choose the insurance company',
      name: 'on_boarding_tenant_selection',
      desc: '',
      args: [],
    );
  }

  /// `By continuing, you agree to our User Agreement and acknowledge that you understand the Privacy Policy.`
  String get on_boarding_term_agreement {
    return Intl.message(
      'By continuing, you agree to our User Agreement and acknowledge that you understand the Privacy Policy.',
      name: 'on_boarding_term_agreement',
      desc: '',
      args: [],
    );
  }

  /// `New to Treasure Box?`
  String get on_boarding_new_to_treasure_box {
    return Intl.message(
      'New to Treasure Box?',
      name: 'on_boarding_new_to_treasure_box',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get on_boarding_sign_up {
    return Intl.message(
      'Sign Up',
      name: 'on_boarding_sign_up',
      desc: '',
      args: [],
    );
  }

  /// `No BankID`
  String get no_bank_id_title {
    return Intl.message(
      'No BankID',
      name: 'no_bank_id_title',
      desc: '',
      args: [],
    );
  }

  /// `Please have a check. BankID app has not been detected on your phone.`
  String get no_bank_id_content {
    return Intl.message(
      'Please have a check. BankID app has not been detected on your phone.',
      name: 'no_bank_id_content',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get main_tab_home {
    return Intl.message(
      'Home',
      name: 'main_tab_home',
      desc: '',
      args: [],
    );
  }

  /// `Items`
  String get main_tab_items {
    return Intl.message(
      'Items',
      name: 'main_tab_items',
      desc: '',
      args: [],
    );
  }

  /// `Collections`
  String get main_tab_collections {
    return Intl.message(
      'Collections',
      name: 'main_tab_collections',
      desc: '',
      args: [],
    );
  }

  /// `Transactions`
  String get main_tab_transactions {
    return Intl.message(
      'Transactions',
      name: 'main_tab_transactions',
      desc: '',
      args: [],
    );
  }

  /// `Policy`
  String get main_tab_policy {
    return Intl.message(
      'Policy',
      name: 'main_tab_policy',
      desc: '',
      args: [],
    );
  }

  /// `Scan`
  String get scan {
    return Intl.message(
      'Scan',
      name: 'scan',
      desc: '',
      args: [],
    );
  }

  /// `Upload`
  String get upload {
    return Intl.message(
      'Upload',
      name: 'upload',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Back  `
  String get back {
    return Intl.message(
      'Back  ',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get get_started_action {
    return Intl.message(
      'Get Started',
      name: 'get_started_action',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue_action {
    return Intl.message(
      'Continue',
      name: 'continue_action',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok_action {
    return Intl.message(
      'OK',
      name: 'ok_action',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Options`
  String get options {
    return Intl.message(
      'Options',
      name: 'options',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove {
    return Intl.message(
      'Remove',
      name: 'remove',
      desc: '',
      args: [],
    );
  }

  /// `Collection`
  String get collection {
    return Intl.message(
      'Collection',
      name: 'collection',
      desc: '',
      args: [],
    );
  }

  /// `No results found`
  String get no_result {
    return Intl.message(
      'No results found',
      name: 'no_result',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get item_name {
    return Intl.message(
      'Name',
      name: 'item_name',
      desc: '',
      args: [],
    );
  }

  /// `Brand`
  String get item_brand {
    return Intl.message(
      'Brand',
      name: 'item_brand',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get item_price {
    return Intl.message(
      'Price',
      name: 'item_price',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get item_date {
    return Intl.message(
      'Date',
      name: 'item_date',
      desc: '',
      args: [],
    );
  }

  /// `Purchased at`
  String get item_purchased_at {
    return Intl.message(
      'Purchased at',
      name: 'item_purchased_at',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get item_category {
    return Intl.message(
      'Category',
      name: 'item_category',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get item_category_selection {
    return Intl.message(
      'Categories',
      name: 'item_category_selection',
      desc: '',
      args: [],
    );
  }

  /// `Type something`
  String get item_note_type_something {
    return Intl.message(
      'Type something',
      name: 'item_note_type_something',
      desc: '',
      args: [],
    );
  }

  /// `Default brand`
  String get item_detail_default_brand {
    return Intl.message(
      'Default brand',
      name: 'item_detail_default_brand',
      desc: '',
      args: [],
    );
  }

  /// `Product name`
  String get item_detail_default_name {
    return Intl.message(
      'Product name',
      name: 'item_detail_default_name',
      desc: '',
      args: [],
    );
  }

  /// `0000`
  String get item_detail_default_price {
    return Intl.message(
      '0000',
      name: 'item_detail_default_price',
      desc: '',
      args: [],
    );
  }

  /// `placetobuy.com`
  String get item_detail_default_purchased {
    return Intl.message(
      'placetobuy.com',
      name: 'item_detail_default_purchased',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get item_detail_default_category {
    return Intl.message(
      'Category',
      name: 'item_detail_default_category',
      desc: '',
      args: [],
    );
  }

  /// `Look like there is no description for this product`
  String get item_detail_default_description {
    return Intl.message(
      'Look like there is no description for this product',
      name: 'item_detail_default_description',
      desc: '',
      args: [],
    );
  }

  /// `Add Item`
  String get add_item {
    return Intl.message(
      'Add Item',
      name: 'add_item',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get add_item_notes {
    return Intl.message(
      'Notes',
      name: 'add_item_notes',
      desc: '',
      args: [],
    );
  }

  /// `Collections`
  String get add_item_collections {
    return Intl.message(
      'Collections',
      name: 'add_item_collections',
      desc: '',
      args: [],
    );
  }

  /// `Receipt`
  String get add_item_receipt {
    return Intl.message(
      'Receipt',
      name: 'add_item_receipt',
      desc: '',
      args: [],
    );
  }

  /// `Documents`
  String get add_item_document {
    return Intl.message(
      'Documents',
      name: 'add_item_document',
      desc: '',
      args: [],
    );
  }

  /// `This product is not part of a collection. Add or create new collection!`
  String get add_item_collection_notice {
    return Intl.message(
      'This product is not part of a collection. Add or create new collection!',
      name: 'add_item_collection_notice',
      desc: '',
      args: [],
    );
  }

  /// `Please note that uploading the receipt from your product is of crucial importance.`
  String get add_item_receipt_document_notice {
    return Intl.message(
      'Please note that uploading the receipt from your product is of crucial importance.',
      name: 'add_item_receipt_document_notice',
      desc: '',
      args: [],
    );
  }

  /// `Delete 'Photo'?`
  String get add_item_delete_photo {
    return Intl.message(
      'Delete \'Photo\'?',
      name: 'add_item_delete_photo',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this photo?`
  String get add_item_delete_photo_notice {
    return Intl.message(
      'Are you sure you want to delete this photo?',
      name: 'add_item_delete_photo_notice',
      desc: '',
      args: [],
    );
  }

  /// `Photo of your item`
  String get add_item_option_photo_your_item {
    return Intl.message(
      'Photo of your item',
      name: 'add_item_option_photo_your_item',
      desc: '',
      args: [],
    );
  }

  /// `Photo of your receipt`
  String get add_item_option_photo_your_receipt {
    return Intl.message(
      'Photo of your receipt',
      name: 'add_item_option_photo_your_receipt',
      desc: '',
      args: [],
    );
  }

  /// `Add manually`
  String get add_item_option_add_manual {
    return Intl.message(
      'Add manually',
      name: 'add_item_option_add_manual',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get add_item_category_continue {
    return Intl.message(
      'Continue',
      name: 'add_item_category_continue',
      desc: '',
      args: [],
    );
  }

  /// `Item added successfully`
  String get add_item_success {
    return Intl.message(
      'Item added successfully',
      name: 'add_item_success',
      desc: '',
      args: [],
    );
  }

  /// `Claims`
  String get claims {
    return Intl.message(
      'Claims',
      name: 'claims',
      desc: '',
      args: [],
    );
  }

  /// `We're sorry that you have to make a claim, but we'll make this as quick and easy as possible, it's just three simple steps!`
  String get claim_get_started_notice {
    return Intl.message(
      'We\'re sorry that you have to make a claim, but we\'ll make this as quick and easy as possible, it\'s just three simple steps!',
      name: 'claim_get_started_notice',
      desc: '',
      args: [],
    );
  }

  /// `How to claim`
  String get claim_how_to_claim {
    return Intl.message(
      'How to claim',
      name: 'claim_how_to_claim',
      desc: '',
      args: [],
    );
  }

  /// `Record a short video`
  String get claim_get_started_first_title {
    return Intl.message(
      'Record a short video',
      name: 'claim_get_started_first_title',
      desc: '',
      args: [],
    );
  }

  /// `All you need to do is tell us what's happened to your {claimItemName}`
  String claim_get_started_first_notice(String claimItemName) {
    return Intl.message(
      'All you need to do is tell us what\'s happened to your $claimItemName',
      name: 'claim_get_started_first_notice',
      desc: '',
      args: [claimItemName],
    );
  }

  /// `Sign your claim`
  String get claim_get_started_second_title {
    return Intl.message(
      'Sign your claim',
      name: 'claim_get_started_second_title',
      desc: '',
      args: [],
    );
  }

  /// `We need you to sign to your claim for legal reasons, but it's easy, you just use your finger!`
  String get claim_get_started_second_notice {
    return Intl.message(
      'We need you to sign to your claim for legal reasons, but it\'s easy, you just use your finger!',
      name: 'claim_get_started_second_notice',
      desc: '',
      args: [],
    );
  }

  /// `Sit back and wait`
  String get claim_get_started_third_title {
    return Intl.message(
      'Sit back and wait',
      name: 'claim_get_started_third_title',
      desc: '',
      args: [],
    );
  }

  /// `But don't get too comfy, we aim to pay your claim in under 2 minutes.`
  String get claim_get_started_third_notice {
    return Intl.message(
      'But don\'t get too comfy, we aim to pay your claim in under 2 minutes.',
      name: 'claim_get_started_third_notice',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get claim_other {
    return Intl.message(
      'Other',
      name: 'claim_other',
      desc: '',
      args: [],
    );
  }

  /// `Let's get started!`
  String get claim_was_it_title {
    return Intl.message(
      'Let\'s get started!',
      name: 'claim_was_it_title',
      desc: '',
      args: [],
    );
  }

  /// `Can you tell us what happened to your item?`
  String get claim_was_it_notice {
    return Intl.message(
      'Can you tell us what happened to your item?',
      name: 'claim_was_it_notice',
      desc: '',
      args: [],
    );
  }

  /// `Was it:`
  String get claim_was_it {
    return Intl.message(
      'Was it:',
      name: 'claim_was_it',
      desc: '',
      args: [],
    );
  }

  /// `Damaged`
  String get claim_was_it_damaged {
    return Intl.message(
      'Damaged',
      name: 'claim_was_it_damaged',
      desc: '',
      args: [],
    );
  }

  /// `Lost`
  String get claim_was_it_lost {
    return Intl.message(
      'Lost',
      name: 'claim_was_it_lost',
      desc: '',
      args: [],
    );
  }

  /// `Stolen`
  String get claim_was_it_stolen {
    return Intl.message(
      'Stolen',
      name: 'claim_was_it_stolen',
      desc: '',
      args: [],
    );
  }

  /// `Thanks!`
  String get claim_it_is_title {
    return Intl.message(
      'Thanks!',
      name: 'claim_it_is_title',
      desc: '',
      args: [],
    );
  }

  /// `What type of damage is it?`
  String get claim_it_is_notice {
    return Intl.message(
      'What type of damage is it?',
      name: 'claim_it_is_notice',
      desc: '',
      args: [],
    );
  }

  /// `It is:`
  String get claim_it_is {
    return Intl.message(
      'It is:',
      name: 'claim_it_is',
      desc: '',
      args: [],
    );
  }

  /// `Smashed/ Broken`
  String get claim_it_is_broken {
    return Intl.message(
      'Smashed/ Broken',
      name: 'claim_it_is_broken',
      desc: '',
      args: [],
    );
  }

  /// `Liquid Damage`
  String get claim_it_is_liquid {
    return Intl.message(
      'Liquid Damage',
      name: 'claim_it_is_liquid',
      desc: '',
      args: [],
    );
  }

  /// `Last question!`
  String get claim_there_was_title {
    return Intl.message(
      'Last question!',
      name: 'claim_there_was_title',
      desc: '',
      args: [],
    );
  }

  /// `Was anyone hurt or was any property damaged at the same time?`
  String get claim_there_was_notice {
    return Intl.message(
      'Was anyone hurt or was any property damaged at the same time?',
      name: 'claim_there_was_notice',
      desc: '',
      args: [],
    );
  }

  /// `There was:`
  String get claim_there_was {
    return Intl.message(
      'There was:',
      name: 'claim_there_was',
      desc: '',
      args: [],
    );
  }

  /// `Nobody hurt and no property was damaged`
  String get claim_there_was_no_hurt_no_property {
    return Intl.message(
      'Nobody hurt and no property was damaged',
      name: 'claim_there_was_no_hurt_no_property',
      desc: '',
      args: [],
    );
  }

  /// `Someone hurt but no property was damaged`
  String get claim_there_was_hurt_no_property {
    return Intl.message(
      'Someone hurt but no property was damaged',
      name: 'claim_there_was_hurt_no_property',
      desc: '',
      args: [],
    );
  }

  /// `Someone hurt and property was damaged`
  String get claim_there_was_hurt_property {
    return Intl.message(
      'Someone hurt and property was damaged',
      name: 'claim_there_was_hurt_property',
      desc: '',
      args: [],
    );
  }

  /// `All done`
  String get claim_all_done_title {
    return Intl.message(
      'All done',
      name: 'claim_all_done_title',
      desc: '',
      args: [],
    );
  }

  /// `You've told us the following:\nYour item was <b>Damaged</b> by <b>{damagedType}</b>.\nIs this correct?`
  String claim_all_done_damaged_notice(String damagedType) {
    return Intl.message(
      'You\'ve told us the following:\nYour item was <b>Damaged</b> by <b>$damagedType</b>.\nIs this correct?',
      name: 'claim_all_done_damaged_notice',
      desc: '',
      args: [damagedType],
    );
  }

  /// `You've told us the following:\nYour item was <b>{coverageType}</b>.\nIs this correct?`
  String claim_all_done_notice(String coverageType) {
    return Intl.message(
      'You\'ve told us the following:\nYour item was <b>$coverageType</b>.\nIs this correct?',
      name: 'claim_all_done_notice',
      desc: '',
      args: [coverageType],
    );
  }

  /// `Yes, continue`
  String get claim_all_done_notice_continue {
    return Intl.message(
      'Yes, continue',
      name: 'claim_all_done_notice_continue',
      desc: '',
      args: [],
    );
  }

  /// `No, edit answers`
  String get claim_all_done_notice_return {
    return Intl.message(
      'No, edit answers',
      name: 'claim_all_done_notice_return',
      desc: '',
      args: [],
    );
  }

  /// `Last step`
  String get claim_last_step_title {
    return Intl.message(
      'Last step',
      name: 'claim_last_step_title',
      desc: '',
      args: [],
    );
  }

  /// `We need you to record a short video to tell us what happened.`
  String get claim_last_step_notice {
    return Intl.message(
      'We need you to record a short video to tell us what happened.',
      name: 'claim_last_step_notice',
      desc: '',
      args: [],
    );
  }

  /// `Record Video`
  String get claim_last_step_record_video {
    return Intl.message(
      'Record Video',
      name: 'claim_last_step_record_video',
      desc: '',
      args: [],
    );
  }

  /// `Submit photos of your damaged item`
  String get claim_add_photos_title {
    return Intl.message(
      'Submit photos of your damaged item',
      name: 'claim_add_photos_title',
      desc: '',
      args: [],
    );
  }

  /// `Can you send us some photos of the damaged item? You can leave the app to take photos if you need to`
  String get claim_add_photos_notice {
    return Intl.message(
      'Can you send us some photos of the damaged item? You can leave the app to take photos if you need to',
      name: 'claim_add_photos_notice',
      desc: '',
      args: [],
    );
  }

  /// `Submit your claim`
  String get claim_add_photos_submit_your_claim {
    return Intl.message(
      'Submit your claim',
      name: 'claim_add_photos_submit_your_claim',
      desc: '',
      args: [],
    );
  }

  /// `Edit item`
  String get edit_item {
    return Intl.message(
      'Edit item',
      name: 'edit_item',
      desc: '',
      args: [],
    );
  }

  /// `Make a claim`
  String get make_claim {
    return Intl.message(
      'Make a claim',
      name: 'make_claim',
      desc: '',
      args: [],
    );
  }

  /// `Share item`
  String get share_item {
    return Intl.message(
      'Share item',
      name: 'share_item',
      desc: '',
      args: [],
    );
  }

  /// `Delete item`
  String get delete_item {
    return Intl.message(
      'Delete item',
      name: 'delete_item',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this item?`
  String get delete_item_notice {
    return Intl.message(
      'Are you sure you want to delete this item?',
      name: 'delete_item_notice',
      desc: '',
      args: [],
    );
  }

  /// `Item deleted successfully`
  String get delete_item_success {
    return Intl.message(
      'Item deleted successfully',
      name: 'delete_item_success',
      desc: '',
      args: [],
    );
  }

  /// `Detail Options`
  String get detail_options {
    return Intl.message(
      'Detail Options',
      name: 'detail_options',
      desc: '',
      args: [],
    );
  }

  /// `See more`
  String get see_more {
    return Intl.message(
      'See more',
      name: 'see_more',
      desc: '',
      args: [],
    );
  }

  /// `Modify item successfully`
  String get edit_item_success {
    return Intl.message(
      'Modify item successfully',
      name: 'edit_item_success',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Items`
  String get items {
    return Intl.message(
      'Items',
      name: 'items',
      desc: '',
      args: [],
    );
  }

  /// `Timeline`
  String get timeline {
    return Intl.message(
      'Timeline',
      name: 'timeline',
      desc: '',
      args: [],
    );
  }

  /// `A-Z`
  String get sort_az {
    return Intl.message(
      'A-Z',
      name: 'sort_az',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Attributes`
  String get attributes {
    return Intl.message(
      'Attributes',
      name: 'attributes',
      desc: '',
      args: [],
    );
  }

  /// `Cannot load items due to network problem. Please try again later!`
  String get items_listing_failed_to_get_item_list {
    return Intl.message(
      'Cannot load items due to network problem. Please try again later!',
      name: 'items_listing_failed_to_get_item_list',
      desc: '',
      args: [],
    );
  }

  /// `Insured`
  String get items_insured {
    return Intl.message(
      'Insured',
      name: 'items_insured',
      desc: '',
      args: [],
    );
  }

  /// `Uninsured`
  String get items_uninsured {
    return Intl.message(
      'Uninsured',
      name: 'items_uninsured',
      desc: '',
      args: [],
    );
  }

  /// `Deprecating`
  String get items_deprecating {
    return Intl.message(
      'Deprecating',
      name: 'items_deprecating',
      desc: '',
      args: [],
    );
  }

  /// `Underinsured`
  String get items_underinsured {
    return Intl.message(
      'Underinsured',
      name: 'items_underinsured',
      desc: '',
      args: [],
    );
  }

  /// `There's no any item found`
  String get search_item_not_found {
    return Intl.message(
      'There\'s no any item found',
      name: 'search_item_not_found',
      desc: '',
      args: [],
    );
  }

  /// `See results for {query}`
  String search_item_see_result(String query) {
    return Intl.message(
      'See results for $query',
      name: 'search_item_see_result',
      desc: '',
      args: [query],
    );
  }

  /// `Cancel`
  String get common_action_cancel {
    return Intl.message(
      'Cancel',
      name: 'common_action_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong, please try again!`
  String get error_generic {
    return Intl.message(
      'Something went wrong, please try again!',
      name: 'error_generic',
      desc: '',
      args: [],
    );
  }

  /// `Collections`
  String get collections {
    return Intl.message(
      'Collections',
      name: 'collections',
      desc: '',
      args: [],
    );
  }

  /// `Collection Value`
  String get collection_value {
    return Intl.message(
      'Collection Value',
      name: 'collection_value',
      desc: '',
      args: [],
    );
  }

  /// `Insured Value`
  String get insured_value {
    return Intl.message(
      'Insured Value',
      name: 'insured_value',
      desc: '',
      args: [],
    );
  }

  /// `Create Collection`
  String get create_collection {
    return Intl.message(
      'Create Collection',
      name: 'create_collection',
      desc: '',
      args: [],
    );
  }

  /// `Add New Items`
  String get add_new_item {
    return Intl.message(
      'Add New Items',
      name: 'add_new_item',
      desc: '',
      args: [],
    );
  }

  /// `Attribute`
  String get attribute {
    return Intl.message(
      'Attribute',
      name: 'attribute',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Pre-defined values`
  String get attribute_enum {
    return Intl.message(
      'Pre-defined values',
      name: 'attribute_enum',
      desc: '',
      args: [],
    );
  }

  /// `Text`
  String get attribute_text {
    return Intl.message(
      'Text',
      name: 'attribute_text',
      desc: '',
      args: [],
    );
  }

  /// `Number`
  String get attribute_number {
    return Intl.message(
      'Number',
      name: 'attribute_number',
      desc: '',
      args: [],
    );
  }

  /// `Add Value`
  String get add_value {
    return Intl.message(
      'Add Value',
      name: 'add_value',
      desc: '',
      args: [],
    );
  }

  /// `Show in list`
  String get show_in_list {
    return Intl.message(
      'Show in list',
      name: 'show_in_list',
      desc: '',
      args: [],
    );
  }

  /// `Show in summary`
  String get show_in_sum {
    return Intl.message(
      'Show in summary',
      name: 'show_in_sum',
      desc: '',
      args: [],
    );
  }

  /// `Edit Collection`
  String get edit_collection {
    return Intl.message(
      'Edit Collection',
      name: 'edit_collection',
      desc: '',
      args: [],
    );
  }

  /// `Delete Collection`
  String get delete_collection {
    return Intl.message(
      'Delete Collection',
      name: 'delete_collection',
      desc: '',
      args: [],
    );
  }

  /// `There is no collections created!`
  String get collection_empty_title {
    return Intl.message(
      'There is no collections created!',
      name: 'collection_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `Group your items at one place. See the value of your collection`
  String get collection_empty_notice {
    return Intl.message(
      'Group your items at one place. See the value of your collection',
      name: 'collection_empty_notice',
      desc: '',
      args: [],
    );
  }

  /// `There is no items added yet!`
  String get collection_detail_empty_title {
    return Intl.message(
      'There is no items added yet!',
      name: 'collection_detail_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `Don't worry there is a shortcut to add new item to this collection!`
  String get collection_detail_empty_notice {
    return Intl.message(
      'Don\'t worry there is a shortcut to add new item to this collection!',
      name: 'collection_detail_empty_notice',
      desc: '',
      args: [],
    );
  }

  /// `Step 1/3`
  String get add_collection_first {
    return Intl.message(
      'Step 1/3',
      name: 'add_collection_first',
      desc: '',
      args: [],
    );
  }

  /// `Group your item at one place!`
  String get add_collection_first_title {
    return Intl.message(
      'Group your item at one place!',
      name: 'add_collection_first_title',
      desc: '',
      args: [],
    );
  }

  /// `You can create your very own custom collection or choose your startup with one of our template for inspiration`
  String get add_collection_first_notice {
    return Intl.message(
      'You can create your very own custom collection or choose your startup with one of our template for inspiration',
      name: 'add_collection_first_notice',
      desc: '',
      args: [],
    );
  }

  /// `Place your name`
  String get add_collection_first_custom_title {
    return Intl.message(
      'Place your name',
      name: 'add_collection_first_custom_title',
      desc: '',
      args: [],
    );
  }

  /// `Please explain something about your collection`
  String get add_collection_first_custom_notice {
    return Intl.message(
      'Please explain something about your collection',
      name: 'add_collection_first_custom_notice',
      desc: '',
      args: [],
    );
  }

  /// `Step 2/3`
  String get add_collection_second {
    return Intl.message(
      'Step 2/3',
      name: 'add_collection_second',
      desc: '',
      args: [],
    );
  }

  /// `Step 3/3`
  String get add_collection_third {
    return Intl.message(
      'Step 3/3',
      name: 'add_collection_third',
      desc: '',
      args: [],
    );
  }

  /// `Add custom attributes per items`
  String get add_collection_third_custom_title {
    return Intl.message(
      'Add custom attributes per items',
      name: 'add_collection_third_custom_title',
      desc: '',
      args: [],
    );
  }

  /// `Collecting things you love, that are authentic to you and your house becomes your story.`
  String get add_collection_third_custom_notice {
    return Intl.message(
      'Collecting things you love, that are authentic to you and your house becomes your story.',
      name: 'add_collection_third_custom_notice',
      desc: '',
      args: [],
    );
  }

  /// `Type of Devices`
  String get type_device {
    return Intl.message(
      'Type of Devices',
      name: 'type_device',
      desc: '',
      args: [],
    );
  }

  /// `Collection added successfully`
  String get add_collection_success {
    return Intl.message(
      'Collection added successfully',
      name: 'add_collection_success',
      desc: '',
      args: [],
    );
  }

  /// `Add ({itemCount})`
  String collection_add_items(int itemCount) {
    final NumberFormat itemCountNumberFormat =
        NumberFormat.decimalPattern(Intl.getCurrentLocale());
    final String itemCountString = itemCountNumberFormat.format(itemCount);

    return Intl.message(
      'Add ($itemCountString)',
      name: 'collection_add_items',
      desc: '',
      args: [itemCountString],
    );
  }

  /// `Removing "{itemName}"`
  String removing_item_from_list(String itemName) {
    return Intl.message(
      'Removing "$itemName"',
      name: 'removing_item_from_list',
      desc: '',
      args: [itemName],
    );
  }

  /// `Removed an item successfully`
  String get remove_item_from_collection {
    return Intl.message(
      'Removed an item successfully',
      name: 'remove_item_from_collection',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to remove this item?`
  String get confirm_remove_item_from_collection {
    return Intl.message(
      'Are you sure you want to remove this item?',
      name: 'confirm_remove_item_from_collection',
      desc: '',
      args: [],
    );
  }

  /// `Options`
  String get collection_options {
    return Intl.message(
      'Options',
      name: 'collection_options',
      desc: '',
      args: [],
    );
  }

  /// `Add Item`
  String get collection_menu_add_item {
    return Intl.message(
      'Add Item',
      name: 'collection_menu_add_item',
      desc: '',
      args: [],
    );
  }

  /// `Edit collection`
  String get collection_menu_edit {
    return Intl.message(
      'Edit collection',
      name: 'collection_menu_edit',
      desc: '',
      args: [],
    );
  }

  /// `Delete collection`
  String get collection_menu_delete {
    return Intl.message(
      'Delete collection',
      name: 'collection_menu_delete',
      desc: '',
      args: [],
    );
  }

  /// `Delete "{collectionName}"`
  String collection_delete_dialog_title(String collectionName) {
    return Intl.message(
      'Delete "$collectionName"',
      name: 'collection_delete_dialog_title',
      desc: '',
      args: [collectionName],
    );
  }

  /// `Please enter a valid value`
  String get collection_attribute_enum_empty {
    return Intl.message(
      'Please enter a valid value',
      name: 'collection_attribute_enum_empty',
      desc: '',
      args: [],
    );
  }

  /// `{enumValue} is duplicated. Please choose another name.`
  String collection_attribute_enum_duplicate(Object enumValue) {
    return Intl.message(
      '$enumValue is duplicated. Please choose another name.',
      name: 'collection_attribute_enum_duplicate',
      desc: '',
      args: [enumValue],
    );
  }

  /// `Are you sure you want to delete this collection?`
  String get collection_delete_dialog_message {
    return Intl.message(
      'Are you sure you want to delete this collection?',
      name: 'collection_delete_dialog_message',
      desc: '',
      args: [],
    );
  }

  /// `Collection deleted successfully`
  String get collection_delete_success_message {
    return Intl.message(
      'Collection deleted successfully',
      name: 'collection_delete_success_message',
      desc: '',
      args: [],
    );
  }

  /// `Processing, please wait...`
  String get common_loading_message {
    return Intl.message(
      'Processing, please wait...',
      name: 'common_loading_message',
      desc: '',
      args: [],
    );
  }

  /// `{itemCount} items`
  String item_count(String itemCount) {
    return Intl.message(
      '$itemCount items',
      name: 'item_count',
      desc: '',
      args: [itemCount],
    );
  }

  /// `Numerics`
  String get numeric {
    return Intl.message(
      'Numerics',
      name: 'numeric',
      desc: '',
      args: [],
    );
  }

  /// `Text`
  String get text {
    return Intl.message(
      'Text',
      name: 'text',
      desc: '',
      args: [],
    );
  }

  /// `New collection created`
  String get new_collection_created {
    return Intl.message(
      'New collection created',
      name: 'new_collection_created',
      desc: '',
      args: [],
    );
  }

  /// `Add ({count})`
  String item_add_collection_count(String count) {
    return Intl.message(
      'Add ($count)',
      name: 'item_add_collection_count',
      desc: '',
      args: [count],
    );
  }

  /// `Are you sure you want to remove this collection?`
  String get confirm_remove_collection_from_item {
    return Intl.message(
      'Are you sure you want to remove this collection?',
      name: 'confirm_remove_collection_from_item',
      desc: '',
      args: [],
    );
  }

  /// `Removed collection successfully`
  String get remove_collection_from_item_success {
    return Intl.message(
      'Removed collection successfully',
      name: 'remove_collection_from_item_success',
      desc: '',
      args: [],
    );
  }

  /// `Removed collection unsuccessfully`
  String get remove_collection_from_item_failed {
    return Intl.message(
      'Removed collection unsuccessfully',
      name: 'remove_collection_from_item_failed',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Family Items Added`
  String get family_item_added {
    return Intl.message(
      'Family Items Added',
      name: 'family_item_added',
      desc: '',
      args: [],
    );
  }

  /// `Tips`
  String get tips {
    return Intl.message(
      'Tips',
      name: 'tips',
      desc: '',
      args: [],
    );
  }

  /// `News`
  String get news {
    return Intl.message(
      'News',
      name: 'news',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Family`
  String get family {
    return Intl.message(
      'Family',
      name: 'family',
      desc: '',
      args: [],
    );
  }

  /// `Your photo size should not be greater than 10MB`
  String get big_image_notify {
    return Intl.message(
      'Your photo size should not be greater than 10MB',
      name: 'big_image_notify',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Notification rules`
  String get notification_rules {
    return Intl.message(
      'Notification rules',
      name: 'notification_rules',
      desc: '',
      args: [],
    );
  }

  /// `Your payment details`
  String get your_payment_details {
    return Intl.message(
      'Your payment details',
      name: 'your_payment_details',
      desc: '',
      args: [],
    );
  }

  /// `Your properties`
  String get your_properties {
    return Intl.message(
      'Your properties',
      name: 'your_properties',
      desc: '',
      args: [],
    );
  }

  /// `Policy history`
  String get policy_history {
    return Intl.message(
      'Policy history',
      name: 'policy_history',
      desc: '',
      args: [],
    );
  }

  /// `Merge accounts`
  String get merge_accounts {
    return Intl.message(
      'Merge accounts',
      name: 'merge_accounts',
      desc: '',
      args: [],
    );
  }

  /// `Terms and conditions`
  String get term_and_condition {
    return Intl.message(
      'Terms and conditions',
      name: 'term_and_condition',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get delete_account {
    return Intl.message(
      'Delete Account',
      name: 'delete_account',
      desc: '',
      args: [],
    );
  }

  /// `Processed`
  String get processed {
    return Intl.message(
      'Processed',
      name: 'processed',
      desc: '',
      args: [],
    );
  }

  /// `Unprocessed`
  String get unprocessed {
    return Intl.message(
      'Unprocessed',
      name: 'unprocessed',
      desc: '',
      args: [],
    );
  }

  /// `Show more`
  String get show_more {
    return Intl.message(
      'Show more',
      name: 'show_more',
      desc: '',
      args: [],
    );
  }

  /// `Collapse`
  String get collapse {
    return Intl.message(
      'Collapse',
      name: 'collapse',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get sign_out {
    return Intl.message(
      'Sign out',
      name: 'sign_out',
      desc: '',
      args: [],
    );
  }

  /// `{price} {currency}`
  String price_currency(String price, String currency) {
    return Intl.message(
      '$price $currency',
      name: 'price_currency',
      desc: '',
      args: [price, currency],
    );
  }

  /// `{article} has {approved} successfully`
  String article_update_success(String article, String approved) {
    return Intl.message(
      '$article has $approved successfully',
      name: 'article_update_success',
      desc: '',
      args: [article, approved],
    );
  }

  /// ` {article} has {approved} unsuccessfully. Please try again.`
  String article_update_failed(String article, String approved) {
    return Intl.message(
      ' $article has $approved unsuccessfully. Please try again.',
      name: 'article_update_failed',
      desc: '',
      args: [article, approved],
    );
  }

  /// `approved`
  String get approved {
    return Intl.message(
      'approved',
      name: 'approved',
      desc: '',
      args: [],
    );
  }

  /// `rejected`
  String get rejected {
    return Intl.message(
      'rejected',
      name: 'rejected',
      desc: '',
      args: [],
    );
  }

  /// `Edit profile successfully`
  String get edit_profile_success {
    return Intl.message(
      'Edit profile successfully',
      name: 'edit_profile_success',
      desc: '',
      args: [],
    );
  }

  /// `Edit profile unsuccessfully`
  String get edit_profile_failed {
    return Intl.message(
      'Edit profile unsuccessfully',
      name: 'edit_profile_failed',
      desc: '',
      args: [],
    );
  }

  /// `Centre your face in the oval`
  String get item_claim_record_centre_face {
    return Intl.message(
      'Centre your face in the oval',
      name: 'item_claim_record_centre_face',
      desc: '',
      args: [],
    );
  }

  /// `Press record when you’re ready, tell us what happened and remember to speak clearly. Don’t worry, you can keep trying until you’re happy!`
  String get item_claim_notice_press_record {
    return Intl.message(
      'Press record when you’re ready, tell us what happened and remember to speak clearly. Don’t worry, you can keep trying until you’re happy!',
      name: 'item_claim_notice_press_record',
      desc: '',
      args: [],
    );
  }

  /// `Press to record`
  String get press_record {
    return Intl.message(
      'Press to record',
      name: 'press_record',
      desc: '',
      args: [],
    );
  }

  /// `Recording starting in`
  String get record_count_down {
    return Intl.message(
      'Recording starting in',
      name: 'record_count_down',
      desc: '',
      args: [],
    );
  }

  /// `Record again`
  String get record_again {
    return Intl.message(
      'Record again',
      name: 'record_again',
      desc: '',
      args: [],
    );
  }

  /// `Use Recording`
  String get use_record {
    return Intl.message(
      'Use Recording',
      name: 'use_record',
      desc: '',
      args: [],
    );
  }

  /// `Prepare for a demo`
  String get demo {
    return Intl.message(
      'Prepare for a demo',
      name: 'demo',
      desc: '',
      args: [],
    );
  }

  /// `Let's prepare for a quick demo`
  String get demo_title {
    return Intl.message(
      'Let\'s prepare for a quick demo',
      name: 'demo_title',
      desc: '',
      args: [],
    );
  }

  /// `Tap these buttons to prepare your Treasure Box for a quick demo`
  String get demo_notice {
    return Intl.message(
      'Tap these buttons to prepare your Treasure Box for a quick demo',
      name: 'demo_notice',
      desc: '',
      args: [],
    );
  }

  /// `Reset account`
  String get demo_reset_account {
    return Intl.message(
      'Reset account',
      name: 'demo_reset_account',
      desc: '',
      args: [],
    );
  }

  /// `Create Transaction`
  String get demo_create_transaction {
    return Intl.message(
      'Create Transaction',
      name: 'demo_create_transaction',
      desc: '',
      args: [],
    );
  }

  /// `Set up the Box`
  String get demo_setup_box {
    return Intl.message(
      'Set up the Box',
      name: 'demo_setup_box',
      desc: '',
      args: [],
    );
  }

  /// `Send Transaction notification`
  String get demo_transaction_notification {
    return Intl.message(
      'Send Transaction notification',
      name: 'demo_transaction_notification',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `We’re processing your claim`
  String get item_claim_done_title {
    return Intl.message(
      'We’re processing your claim',
      name: 'item_claim_done_title',
      desc: '',
      args: [],
    );
  }

  /// `We’ll aim to let you know within the next 5 minutes the outcome of your claim. We’ll notify you when we have an answer`
  String get item_claim_done_notice {
    return Intl.message(
      'We’ll aim to let you know within the next 5 minutes the outcome of your claim. We’ll notify you when we have an answer',
      name: 'item_claim_done_notice',
      desc: '',
      args: [],
    );
  }

  /// `Center your receipt in the frame`
  String get ocr_camera_notice {
    return Intl.message(
      'Center your receipt in the frame',
      name: 'ocr_camera_notice',
      desc: '',
      args: [],
    );
  }

  /// `Cannot detect receipt. Try again`
  String get ocr_scan_failed {
    return Intl.message(
      'Cannot detect receipt. Try again',
      name: 'ocr_scan_failed',
      desc: '',
      args: [],
    );
  }

  /// `Click on the line in the picture to be able to edit`
  String get ocr_screen_shot_notice {
    return Intl.message(
      'Click on the line in the picture to be able to edit',
      name: 'ocr_screen_shot_notice',
      desc: '',
      args: [],
    );
  }

  /// `This phone number is invalid`
  String get invalid_phone_number {
    return Intl.message(
      'This phone number is invalid',
      name: 'invalid_phone_number',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
