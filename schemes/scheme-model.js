const db = require('../data/db-config');

module.exports = {
  find,
  findById,
  findSteps,
  add,
  update,
  remove,
  addStep
};

function find() {
  return db('schemes');
}

function findById(id) {
  return db('schemes').where({ id }).first();
}

function findSteps(id) {
  return db('schemes')
    .join('steps', 'steps.scheme_id', 'schemes.id')
    .select(
      'schemes.id',
      'schemes.scheme_name',
      'steps.step_number',
      'steps.instructions'
    )
    .where({ scheme_id: id })
    .orderBy('steps.step_number');
}

function add(scheme) {
  return db('schemes')
    .insert(scheme)
    .then((ids) => {
      return findById(ids[0]);
    });
}

function update(changes, id) {
  return db('schemes')
    .where({ id })
    .update(changes)
    .then((count) => {
      return findById(id);
    });
}

function remove(id) {
  return db('schemes').where({ id }).del();
}

function addStep(step, scheme_id) {
  const newStep = { ...step, scheme_id };
  return db('steps')
    .insert(newStep)
    .then((count) => {
      return newStep;
    });
}
