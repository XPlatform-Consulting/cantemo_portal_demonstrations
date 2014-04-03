class CantemoPortalDemonstration < ActiveRecord::Base
  include Action

  # Default Values

  DEFAULT_HOST_ADDRESS  = 'localhost'
  DEFAULT_HOST_PORT     = ''
  DEFAULT_USERNAME      = 'admin'
  DEFAULT_PASSWORD      = 'password'


  # Input Parameters

  VAR_OPERATION = 'operation'
  OPERATION_LIST = [
    'Collection_Create',
    'Collection_Asset_Add',
    'Item_Create',
    'Item_Delete',
    'Item_Metadata_Get',
    'Item_Metadata_Set',
    'Item_Search',
  ]

  # Output Fields
  # TODO Add Output Fields


  # Revision history
  # => 0.0.1 initial release
  def self.version
    return 0, 0, 1
  end

  def self.display_name
    'Cantemo Portal'
  end

  # The Plug-in Description
  def description
    'This action plug-in can be used to interact with Cantemo Portal.'
  end

  def category
    [ CATEGORY_INTEGRATION ]
  end

  def self.dependencies
    [ ]
  end

  def inputs_spec
    @required_inputs = {}
    @optional_inputs = { '' => TYPE_STRING }

    return @required_inputs, @optional_inputs
  end

  def outputs_spec
    return { '' => TYPE_STRING }
  end

  def execute

  end


end