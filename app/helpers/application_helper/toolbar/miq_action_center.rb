class ApplicationHelper::Toolbar::MiqActionCenter < ApplicationHelper::Toolbar::Basic
  button_group('miq_action_vmdb', [
    select(
      :miq_action_vmdb_choice,
      nil,
      t = N_('Configuration'),
      t,
      :items => [
        button(
          :action_edit,
          'pficon pficon-edit fa-lg',
          t = N_('Edit this Action'),
          t,
          :klass     => ApplicationHelper::Button::MiqActionEdit,
          :url_parms => "?type=basic"),
        button(
          :action_delete,
          'pficon pficon-delete fa-lg',
          t = N_('Delete this Action'),
          t,
          :url_parms    => "main_div",
          :send_checked => true,
          :confirm      => N_("Are you sure you want to delete this Action?"),
          :klass        =>  ApplicationHelper::Button::MiqActionDelete),
      ]
    ),
  ])
end
