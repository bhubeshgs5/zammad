class App.TicketPriority extends App.Model
  @configure 'TicketPriority', 'name', 'note', 'active', 'updated_at'
  @extend Spine.Model.Ajax
  @url: @apiPath + '/ticket_priorities'
  @configure_attributes = [
    { name: 'name',       display: 'Name',    tag: 'input',   type: 'text', limit: 100, 'null': false, translate: true },
    { name: 'active',     display: 'Active',  tag: 'boolean', type: 'boolean', 'default': true, 'null': false },
    { name: 'updated_at', display: 'Updated', type: 'time',   readonly: 1 },
    { name: 'created_at', display: 'Created', type: 'time',   readonly: 1 },
  ]
  @configure_translate = true
  @configure_overview = [
    'name',
  ]