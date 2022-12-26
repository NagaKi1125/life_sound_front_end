// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(article, approved) =>
      " ${article} has ${approved} unsuccessfully. Please try again.";

  static String m1(article, approved) =>
      "${article} has ${approved} successfully";

  static String m2(damagedType) =>
      "You\'ve told us the following:\nYour item was <b>Damaged</b> by <b>${damagedType}</b>.\nIs this correct?";

  static String m3(coverageType) =>
      "You\'ve told us the following:\nYour item was <b>${coverageType}</b>.\nIs this correct?";

  static String m4(claimItemName) =>
      "All you need to do is tell us what\'s happened to your ${claimItemName}";

  static String m5(itemCount) => "Add (${itemCount})";

  static String m6(enumValue) =>
      "${enumValue} is duplicated. Please choose another name.";

  static String m7(collectionName) => "Delete \"${collectionName}\"";

  static String m8(count) => "Add (${count})";

  static String m9(itemCount) => "${itemCount} items";

  static String m10(price, currency) => "${price} ${currency}";

  static String m11(itemName) => "Removing \"${itemName}\"";

  static String m12(query) => "See results for ${query}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "add_collection_first":
            MessageLookupByLibrary.simpleMessage("Step 1/3"),
        "add_collection_first_custom_notice":
            MessageLookupByLibrary.simpleMessage(
                "Please explain something about your collection"),
        "add_collection_first_custom_title":
            MessageLookupByLibrary.simpleMessage("Place your name"),
        "add_collection_first_notice": MessageLookupByLibrary.simpleMessage(
            "You can create your very own custom collection or choose your startup with one of our template for inspiration"),
        "add_collection_first_title": MessageLookupByLibrary.simpleMessage(
            "Group your item at one place!"),
        "add_collection_second":
            MessageLookupByLibrary.simpleMessage("Step 2/3"),
        "add_collection_success": MessageLookupByLibrary.simpleMessage(
            "Collection added successfully"),
        "add_collection_third":
            MessageLookupByLibrary.simpleMessage("Step 3/3"),
        "add_collection_third_custom_notice": MessageLookupByLibrary.simpleMessage(
            "Collecting things you love, that are authentic to you and your house becomes your story."),
        "add_collection_third_custom_title":
            MessageLookupByLibrary.simpleMessage(
                "Add custom attributes per items"),
        "add_item": MessageLookupByLibrary.simpleMessage("Add Item"),
        "add_item_category_continue":
            MessageLookupByLibrary.simpleMessage("Continue"),
        "add_item_collection_notice": MessageLookupByLibrary.simpleMessage(
            "This product is not part of a collection. Add or create new collection!"),
        "add_item_collections":
            MessageLookupByLibrary.simpleMessage("Collections"),
        "add_item_delete_photo":
            MessageLookupByLibrary.simpleMessage("Delete \'Photo\'?"),
        "add_item_delete_photo_notice": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this photo?"),
        "add_item_document": MessageLookupByLibrary.simpleMessage("Documents"),
        "add_item_notes": MessageLookupByLibrary.simpleMessage("Notes"),
        "add_item_option_add_manual":
            MessageLookupByLibrary.simpleMessage("Add manually"),
        "add_item_option_photo_your_item":
            MessageLookupByLibrary.simpleMessage("Photo of your item"),
        "add_item_option_photo_your_receipt":
            MessageLookupByLibrary.simpleMessage("Photo of your receipt"),
        "add_item_receipt": MessageLookupByLibrary.simpleMessage("Receipt"),
        "add_item_receipt_document_notice": MessageLookupByLibrary.simpleMessage(
            "Please note that uploading the receipt from your product is of crucial importance."),
        "add_item_success":
            MessageLookupByLibrary.simpleMessage("Item added successfully"),
        "add_new_item": MessageLookupByLibrary.simpleMessage("Add New Items"),
        "add_value": MessageLookupByLibrary.simpleMessage("Add Value"),
        "approved": MessageLookupByLibrary.simpleMessage("approved"),
        "article_update_failed": m0,
        "article_update_success": m1,
        "attribute": MessageLookupByLibrary.simpleMessage("Attribute"),
        "attribute_enum":
            MessageLookupByLibrary.simpleMessage("Pre-defined values"),
        "attribute_number": MessageLookupByLibrary.simpleMessage("Number"),
        "attribute_text": MessageLookupByLibrary.simpleMessage("Text"),
        "attributes": MessageLookupByLibrary.simpleMessage("Attributes"),
        "back": MessageLookupByLibrary.simpleMessage("Back  "),
        "big_image_notify": MessageLookupByLibrary.simpleMessage(
            "Your photo size should not be greater than 10MB"),
        "camera": MessageLookupByLibrary.simpleMessage("Camera"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "category": MessageLookupByLibrary.simpleMessage("Category"),
        "claim_add_photos_notice": MessageLookupByLibrary.simpleMessage(
            "Can you send us some photos of the damaged item? You can leave the app to take photos if you need to"),
        "claim_add_photos_submit_your_claim":
            MessageLookupByLibrary.simpleMessage("Submit your claim"),
        "claim_add_photos_title": MessageLookupByLibrary.simpleMessage(
            "Submit photos of your damaged item"),
        "claim_all_done_damaged_notice": m2,
        "claim_all_done_notice": m3,
        "claim_all_done_notice_continue":
            MessageLookupByLibrary.simpleMessage("Yes, continue"),
        "claim_all_done_notice_return":
            MessageLookupByLibrary.simpleMessage("No, edit answers"),
        "claim_all_done_title":
            MessageLookupByLibrary.simpleMessage("All done"),
        "claim_get_started_first_notice": m4,
        "claim_get_started_first_title":
            MessageLookupByLibrary.simpleMessage("Record a short video"),
        "claim_get_started_notice": MessageLookupByLibrary.simpleMessage(
            "We\'re sorry that you have to make a claim, but we\'ll make this as quick and easy as possible, it\'s just three simple steps!"),
        "claim_get_started_second_notice": MessageLookupByLibrary.simpleMessage(
            "We need you to sign to your claim for legal reasons, but it\'s easy, you just use your finger!"),
        "claim_get_started_second_title":
            MessageLookupByLibrary.simpleMessage("Sign your claim"),
        "claim_get_started_third_notice": MessageLookupByLibrary.simpleMessage(
            "But don\'t get too comfy, we aim to pay your claim in under 2 minutes."),
        "claim_get_started_third_title":
            MessageLookupByLibrary.simpleMessage("Sit back and wait"),
        "claim_how_to_claim":
            MessageLookupByLibrary.simpleMessage("How to claim"),
        "claim_it_is": MessageLookupByLibrary.simpleMessage("It is:"),
        "claim_it_is_broken":
            MessageLookupByLibrary.simpleMessage("Smashed/ Broken"),
        "claim_it_is_liquid":
            MessageLookupByLibrary.simpleMessage("Liquid Damage"),
        "claim_it_is_notice":
            MessageLookupByLibrary.simpleMessage("What type of damage is it?"),
        "claim_it_is_title": MessageLookupByLibrary.simpleMessage("Thanks!"),
        "claim_last_step_notice": MessageLookupByLibrary.simpleMessage(
            "We need you to record a short video to tell us what happened."),
        "claim_last_step_record_video":
            MessageLookupByLibrary.simpleMessage("Record Video"),
        "claim_last_step_title":
            MessageLookupByLibrary.simpleMessage("Last step"),
        "claim_other": MessageLookupByLibrary.simpleMessage("Other"),
        "claim_there_was": MessageLookupByLibrary.simpleMessage("There was:"),
        "claim_there_was_hurt_no_property":
            MessageLookupByLibrary.simpleMessage(
                "Someone hurt but no property was damaged"),
        "claim_there_was_hurt_property": MessageLookupByLibrary.simpleMessage(
            "Someone hurt and property was damaged"),
        "claim_there_was_no_hurt_no_property":
            MessageLookupByLibrary.simpleMessage(
                "Nobody hurt and no property was damaged"),
        "claim_there_was_notice": MessageLookupByLibrary.simpleMessage(
            "Was anyone hurt or was any property damaged at the same time?"),
        "claim_there_was_title":
            MessageLookupByLibrary.simpleMessage("Last question!"),
        "claim_was_it": MessageLookupByLibrary.simpleMessage("Was it:"),
        "claim_was_it_damaged": MessageLookupByLibrary.simpleMessage("Damaged"),
        "claim_was_it_lost": MessageLookupByLibrary.simpleMessage("Lost"),
        "claim_was_it_notice": MessageLookupByLibrary.simpleMessage(
            "Can you tell us what happened to your item?"),
        "claim_was_it_stolen": MessageLookupByLibrary.simpleMessage("Stolen"),
        "claim_was_it_title":
            MessageLookupByLibrary.simpleMessage("Let\'s get started!"),
        "claims": MessageLookupByLibrary.simpleMessage("Claims"),
        "collapse": MessageLookupByLibrary.simpleMessage("Collapse"),
        "collection": MessageLookupByLibrary.simpleMessage("Collection"),
        "collection_add_items": m5,
        "collection_attribute_enum_duplicate": m6,
        "collection_attribute_enum_empty":
            MessageLookupByLibrary.simpleMessage("Please enter a valid value"),
        "collection_delete_dialog_message":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to delete this collection?"),
        "collection_delete_dialog_title": m7,
        "collection_delete_success_message":
            MessageLookupByLibrary.simpleMessage(
                "Collection deleted successfully"),
        "collection_detail_empty_notice": MessageLookupByLibrary.simpleMessage(
            "Don\'t worry there is a shortcut to add new item to this collection!"),
        "collection_detail_empty_title": MessageLookupByLibrary.simpleMessage(
            "There is no items added yet!"),
        "collection_empty_notice": MessageLookupByLibrary.simpleMessage(
            "Group your items at one place. See the value of your collection"),
        "collection_empty_title": MessageLookupByLibrary.simpleMessage(
            "There is no collections created!"),
        "collection_menu_add_item":
            MessageLookupByLibrary.simpleMessage("Add Item"),
        "collection_menu_delete":
            MessageLookupByLibrary.simpleMessage("Delete collection"),
        "collection_menu_edit":
            MessageLookupByLibrary.simpleMessage("Edit collection"),
        "collection_options": MessageLookupByLibrary.simpleMessage("Options"),
        "collection_value":
            MessageLookupByLibrary.simpleMessage("Collection Value"),
        "collections": MessageLookupByLibrary.simpleMessage("Collections"),
        "common_action_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "common_loading_message":
            MessageLookupByLibrary.simpleMessage("Processing, please wait..."),
        "confirm_remove_collection_from_item":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to remove this collection?"),
        "confirm_remove_item_from_collection":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to remove this item?"),
        "continue_action": MessageLookupByLibrary.simpleMessage("Continue"),
        "create_collection":
            MessageLookupByLibrary.simpleMessage("Create Collection"),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "delete_account":
            MessageLookupByLibrary.simpleMessage("Delete Account"),
        "delete_collection":
            MessageLookupByLibrary.simpleMessage("Delete Collection"),
        "delete_item": MessageLookupByLibrary.simpleMessage("Delete item"),
        "delete_item_notice": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this item?"),
        "delete_item_success":
            MessageLookupByLibrary.simpleMessage("Item deleted successfully"),
        "demo": MessageLookupByLibrary.simpleMessage("Prepare for a demo"),
        "demo_create_transaction":
            MessageLookupByLibrary.simpleMessage("Create Transaction"),
        "demo_notice": MessageLookupByLibrary.simpleMessage(
            "Tap these buttons to prepare your Treasure Box for a quick demo"),
        "demo_reset_account":
            MessageLookupByLibrary.simpleMessage("Reset account"),
        "demo_setup_box":
            MessageLookupByLibrary.simpleMessage("Set up the Box"),
        "demo_title": MessageLookupByLibrary.simpleMessage(
            "Let\'s prepare for a quick demo"),
        "demo_transaction_notification": MessageLookupByLibrary.simpleMessage(
            "Send Transaction notification"),
        "detail_options":
            MessageLookupByLibrary.simpleMessage("Detail Options"),
        "details": MessageLookupByLibrary.simpleMessage("Details"),
        "done": MessageLookupByLibrary.simpleMessage("Done"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "edit_collection":
            MessageLookupByLibrary.simpleMessage("Edit Collection"),
        "edit_item": MessageLookupByLibrary.simpleMessage("Edit item"),
        "edit_item_success":
            MessageLookupByLibrary.simpleMessage("Modify item successfully"),
        "edit_profile": MessageLookupByLibrary.simpleMessage("Edit Profile"),
        "edit_profile_failed":
            MessageLookupByLibrary.simpleMessage("Edit profile unsuccessfully"),
        "edit_profile_success":
            MessageLookupByLibrary.simpleMessage("Edit profile successfully"),
        "error_generic": MessageLookupByLibrary.simpleMessage(
            "Something went wrong, please try again!"),
        "family": MessageLookupByLibrary.simpleMessage("Family"),
        "family_item_added":
            MessageLookupByLibrary.simpleMessage("Family Items Added"),
        "gallery": MessageLookupByLibrary.simpleMessage("Gallery"),
        "get_started_action":
            MessageLookupByLibrary.simpleMessage("Get Started"),
        "insured_value": MessageLookupByLibrary.simpleMessage("Insured Value"),
        "invalid_phone_number": MessageLookupByLibrary.simpleMessage(
            "This phone number is invalid"),
        "item_add_collection_count": m8,
        "item_brand": MessageLookupByLibrary.simpleMessage("Brand"),
        "item_category": MessageLookupByLibrary.simpleMessage("Category"),
        "item_category_selection":
            MessageLookupByLibrary.simpleMessage("Categories"),
        "item_claim_done_notice": MessageLookupByLibrary.simpleMessage(
            "We’ll aim to let you know within the next 5 minutes the outcome of your claim. We’ll notify you when we have an answer"),
        "item_claim_done_title":
            MessageLookupByLibrary.simpleMessage("We’re processing your claim"),
        "item_claim_notice_press_record": MessageLookupByLibrary.simpleMessage(
            "Press record when you’re ready, tell us what happened and remember to speak clearly. Don’t worry, you can keep trying until you’re happy!"),
        "item_claim_record_centre_face": MessageLookupByLibrary.simpleMessage(
            "Centre your face in the oval"),
        "item_count": m9,
        "item_date": MessageLookupByLibrary.simpleMessage("Date"),
        "item_detail_default_brand":
            MessageLookupByLibrary.simpleMessage("Default brand"),
        "item_detail_default_category":
            MessageLookupByLibrary.simpleMessage("Category"),
        "item_detail_default_description": MessageLookupByLibrary.simpleMessage(
            "Look like there is no description for this product"),
        "item_detail_default_name":
            MessageLookupByLibrary.simpleMessage("Product name"),
        "item_detail_default_price":
            MessageLookupByLibrary.simpleMessage("0000"),
        "item_detail_default_purchased":
            MessageLookupByLibrary.simpleMessage("placetobuy.com"),
        "item_name": MessageLookupByLibrary.simpleMessage("Name"),
        "item_note_type_something":
            MessageLookupByLibrary.simpleMessage("Type something"),
        "item_price": MessageLookupByLibrary.simpleMessage("Price"),
        "item_purchased_at":
            MessageLookupByLibrary.simpleMessage("Purchased at"),
        "items": MessageLookupByLibrary.simpleMessage("Items"),
        "items_deprecating":
            MessageLookupByLibrary.simpleMessage("Deprecating"),
        "items_insured": MessageLookupByLibrary.simpleMessage("Insured"),
        "items_listing_failed_to_get_item_list":
            MessageLookupByLibrary.simpleMessage(
                "Cannot load items due to network problem. Please try again later!"),
        "items_underinsured":
            MessageLookupByLibrary.simpleMessage("Underinsured"),
        "items_uninsured": MessageLookupByLibrary.simpleMessage("Uninsured"),
        "main_tab_collections":
            MessageLookupByLibrary.simpleMessage("Collections"),
        "main_tab_home": MessageLookupByLibrary.simpleMessage("Home"),
        "main_tab_items": MessageLookupByLibrary.simpleMessage("Items"),
        "main_tab_policy": MessageLookupByLibrary.simpleMessage("Policy"),
        "main_tab_transactions":
            MessageLookupByLibrary.simpleMessage("Transactions"),
        "make_claim": MessageLookupByLibrary.simpleMessage("Make a claim"),
        "merge_accounts":
            MessageLookupByLibrary.simpleMessage("Merge accounts"),
        "new_collection_created":
            MessageLookupByLibrary.simpleMessage("New collection created"),
        "news": MessageLookupByLibrary.simpleMessage("News"),
        "no_bank_id_content": MessageLookupByLibrary.simpleMessage(
            "Please have a check. BankID app has not been detected on your phone."),
        "no_bank_id_title": MessageLookupByLibrary.simpleMessage("No BankID"),
        "no_result": MessageLookupByLibrary.simpleMessage("No results found"),
        "notification_rules":
            MessageLookupByLibrary.simpleMessage("Notification rules"),
        "numeric": MessageLookupByLibrary.simpleMessage("Numerics"),
        "ocr_camera_notice": MessageLookupByLibrary.simpleMessage(
            "Center your receipt in the frame"),
        "ocr_scan_failed": MessageLookupByLibrary.simpleMessage(
            "Cannot detect receipt. Try again"),
        "ocr_screen_shot_notice": MessageLookupByLibrary.simpleMessage(
            "Click on the line in the picture to be able to edit"),
        "ok_action": MessageLookupByLibrary.simpleMessage("OK"),
        "on_boarding_log_in_with_bank_id":
            MessageLookupByLibrary.simpleMessage("Log In with BankID"),
        "on_boarding_log_in_with_bank_id_notice":
            MessageLookupByLibrary.simpleMessage(
                "This allows the app and website to share information about you."),
        "on_boarding_log_in_with_bank_id_title":
            MessageLookupByLibrary.simpleMessage(
                "\"Treasure Box App\" Wants to use \"BankID.com\" to Sign in"),
        "on_boarding_log_in_with_email":
            MessageLookupByLibrary.simpleMessage("Log In with Email"),
        "on_boarding_new_to_treasure_box":
            MessageLookupByLibrary.simpleMessage("New to Treasure Box?"),
        "on_boarding_sign_up": MessageLookupByLibrary.simpleMessage("Sign Up"),
        "on_boarding_tenant_selection": MessageLookupByLibrary.simpleMessage(
            "Choose the insurance company"),
        "on_boarding_term_agreement": MessageLookupByLibrary.simpleMessage(
            "By continuing, you agree to our User Agreement and acknowledge that you understand the Privacy Policy."),
        "on_boarding_welcome_to_treasure_box":
            MessageLookupByLibrary.simpleMessage("Welcome to\nTreasure Box"),
        "options": MessageLookupByLibrary.simpleMessage("Options"),
        "policy_history":
            MessageLookupByLibrary.simpleMessage("Policy history"),
        "press_record": MessageLookupByLibrary.simpleMessage("Press to record"),
        "price_currency": m10,
        "processed": MessageLookupByLibrary.simpleMessage("Processed"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "record_again": MessageLookupByLibrary.simpleMessage("Record again"),
        "record_count_down":
            MessageLookupByLibrary.simpleMessage("Recording starting in"),
        "rejected": MessageLookupByLibrary.simpleMessage("rejected"),
        "remove": MessageLookupByLibrary.simpleMessage("Remove"),
        "remove_collection_from_item_failed":
            MessageLookupByLibrary.simpleMessage(
                "Removed collection unsuccessfully"),
        "remove_collection_from_item_success":
            MessageLookupByLibrary.simpleMessage(
                "Removed collection successfully"),
        "remove_item_from_collection": MessageLookupByLibrary.simpleMessage(
            "Removed an item successfully"),
        "removing_item_from_list": m11,
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "scan": MessageLookupByLibrary.simpleMessage("Scan"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "search_item_not_found":
            MessageLookupByLibrary.simpleMessage("There\'s no any item found"),
        "search_item_see_result": m12,
        "see_more": MessageLookupByLibrary.simpleMessage("See more"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "share_item": MessageLookupByLibrary.simpleMessage("Share item"),
        "show_in_list": MessageLookupByLibrary.simpleMessage("Show in list"),
        "show_in_sum": MessageLookupByLibrary.simpleMessage("Show in summary"),
        "show_more": MessageLookupByLibrary.simpleMessage("Show more"),
        "sign_out": MessageLookupByLibrary.simpleMessage("Sign out"),
        "sort_az": MessageLookupByLibrary.simpleMessage("A-Z"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "term_and_condition":
            MessageLookupByLibrary.simpleMessage("Terms and conditions"),
        "text": MessageLookupByLibrary.simpleMessage("Text"),
        "timeline": MessageLookupByLibrary.simpleMessage("Timeline"),
        "tips": MessageLookupByLibrary.simpleMessage("Tips"),
        "type": MessageLookupByLibrary.simpleMessage("Type"),
        "type_device": MessageLookupByLibrary.simpleMessage("Type of Devices"),
        "unprocessed": MessageLookupByLibrary.simpleMessage("Unprocessed"),
        "upload": MessageLookupByLibrary.simpleMessage("Upload"),
        "use_record": MessageLookupByLibrary.simpleMessage("Use Recording"),
        "your_payment_details":
            MessageLookupByLibrary.simpleMessage("Your payment details"),
        "your_properties":
            MessageLookupByLibrary.simpleMessage("Your properties")
      };
}
